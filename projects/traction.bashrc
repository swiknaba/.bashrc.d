# TRACTION

## RYDES
alias sshrydes='cx --profile LIH ssh -s rydes-api -e production snowleopard'
alias sshrydesstaging='cx --profile LIH ssh -s rydes-api -e staging alpaca'
alias sshrydesmobility='cx ssh -s 'mobility-budget-api' -e production bobcat'

## COMPENSAID
alias sshcompensaid='cx --profile LIH ssh -s compensaid -e production flamingo'
alias sshcompensaidstaging='cx --profile LIH ssh -s compensaid -e staging dinosaur'

## Flightvoucher
alias sshflightvoucher='sites && cd traction/corona && export KUBECONFIG="./k8s/kubeconfig.yml:./kubeconfig.yml" && ./bin/lhk8s console flightvoucher-production'
alias sshflightvoucherstaging='sites && cd traction/corona && export KUBECONFIG="./k8s/kubeconfig.yml:./kubeconfig.yml" && ./bin/lhk8s console flightvoucher-staging'

## ABP
alias sshabp='cx --profile LIH ssh -s abp2 -e production kangaroo'
