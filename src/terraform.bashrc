#!/bin/bash

# https://www.terraform.io/docs/cli/index.html

function tf() {
  terraform "$@"
}

function tfi() {
  tf init "$@"
}

function tfv() {
  tf validate "$@"
}

function tfp() {
  tf plan "$@"
}

#
# params:
#   $1: project name, e.g. "myproject"
#   $2: project environment, e.g. "staging"
#   $3: name of the AWS profile, optional, defaults to "default", won't be set if `AWS_PROFILE` is already set
#   $4: name of the user role, optional, defaults to "readonly"
#
# example usage: generate_rds_password myproject staging aws-profile-1
# for the lazy ones: shortcut the function name to "rdspw"
#
function generate_rds_password () {
  PROJECT="$1" # project name, e.g. "myproject"
  ENVIRONMENT="$2" # environment name, e.g. "staging"

  TERRAFORM_DIR="terraform/workspaces/$PROJECT-$ENVIRONMENT" # terraform folder convention
  declare DATABASE_URL_WITH_PORT

  CURRENT_DIR="$PWD"
  if [[ "$CURRENT_DIR" == *"$TERRAFORM_DIR" ]]
  then
    DATABASE_URL_WITH_PORT=$(terraform output database_url |  tr -d '"')
  else
    cd "$TERRAFORM_DIR" || exit
    DATABASE_URL_WITH_PORT=$(terraform output database_url |  tr -d '"')
    cd "$CURRENT_DIR" || exit
  fi

  DATABASE_URL=${DATABASE_URL_WITH_PORT%%:*}
  DATABASE_PORT=${DATABASE_URL_WITH_PORT##*:}

  # convention for DB username: project_environment_readonly, e.g. myproject_staging_readonly
  DATABASE_USERNAME="$PROJECT"_"$ENVIRONMENT"_"${4:-readonly}"

  if [[ -z "$AWS_PROFILE" ]]
  then
    # ${3:-default}: evaluates to 3rd argument or the literal string "default"
    export AWS_PROFILE="${3:-default}"
  fi

  aws rds generate-db-auth-token --hostname "$DATABASE_URL" --port "$DATABASE_PORT" --region eu-central-1 --username "$DATABASE_USERNAME"
}
alias rdspw=generate_rds_password
