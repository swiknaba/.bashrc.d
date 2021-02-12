#!/bin/bash

# TRACTION

## RYDES
alias sshrydes='cx --profile LIH ssh -s rydes-api -e production snowleopard'
alias sshrydesstaging='cx --profile LIH ssh -s rydes-api -e staging alpaca'
alias sshrydesmobility="cx ssh -s 'mobility-budget-api' -e production bobcat"

## COMPENSAID
alias sshcompensaid='cx --profile LIH ssh -s compensaid -e production hare'
alias sshcompensaidstaging='cx --profile LIH ssh -s compensaid -e staging dinosaur'

## Flightvoucher
alias sshflightvoucher='commandIsDisabled sites && cd traction/corona && export KUBECONFIG="./k8s/kubeconfig.yml:./kubeconfig.yml" && ./bin/lhk8s console flightvoucher-production'
alias sshflightvoucherstaging='commandIsDisabled sites && cd traction/corona && export KUBECONFIG="./k8s/kubeconfig.yml:./kubeconfig.yml" && ./bin/lhk8s console flightvoucher-staging'

## ABP
alias sshabp='cx --profile LIH ssh -s abp2 -e production kangaroo'

## Infohub
alias sshinfohubstaging='heroku run rails c --app=infohub-staging'
alias sshinfohub='heroku run rails c --app=infohub-production'

## Offset-API
alias sshoffsetapistaging='heroku run rails c --app=offset-api-staging'
alias sshoffsetapi='heroku run rails c --app=offset-api-production'

## DiscountPass
alias sshdiscountpass='heroku run rails c --app=discount-pass-production'
alias sshdiscountpassstaging='heroku run rails c --app=discount-pass-staging'
