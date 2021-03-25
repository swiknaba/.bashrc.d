#!/bin/bash

# TRACTION

## RYDES
alias sshrydes='cx --profile LIH ssh -s rydes-api -e production snowleopard'
alias sshrydesstaging='cx --profile LIH ssh -s rydes-api -e staging alpaca'
alias sshrydesmobility="cx ssh -s 'mobility-budget-api' -e production bobcat"

## COMPENSAID
alias sshcompensaid='cx --profile LIH ssh -s compensaid -e production hare'
alias sshcompensaidstaging='cx --profile LIH ssh -s compensaid -e staging crayfish'

## Flightvoucher
alias sshflightvoucher='commandIsDisabled sites && cd traction/corona && export KUBECONFIG="./k8s/kubeconfig.yml:./kubeconfig.yml" && ./bin/lhk8s console flightvoucher-production'
alias sshflightvoucherstaging='commandIsDisabled sites && cd traction/corona && export KUBECONFIG="./k8s/kubeconfig.yml:./kubeconfig.yml" && ./bin/lhk8s console flightvoucher-staging'

## ABP
alias sshabp='cx --profile LIH ssh -s abp2 -e production kangaroo'

## Infohub
alias sshinfohubstaging='heroku run rails c --app=infohub-staging'
alias sshinfohub='heroku run rails c --app=infohub-production'

## Offset-API
alias sshoffsetapistaging='heroku run bash --app=offset-api-staging'
alias sshoffsetapi='heroku run bash --app=offset-api-production'

## DiscountPass
alias sshdiscountpass='heroku run rails c --app=discount-pass-production'
alias sshdiscountpassstaging='heroku run rails c --app=discount-pass-staging'

## for some projects, we use hardsource webpack plugin, which has a bug
## that causes a corrupt cache state, see: https://github.com/mzgoddard/hard-source-webpack-plugin/issues/416
alias hscc='rm -rf node_modules/.cache/hard-source/'
