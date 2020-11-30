#!/bin/bash

# bat, a better cat: https://github.com/sharkdp/bat

alias taillogdev='tail -f log/development.log | bat --paging=never -l log'
alias taillogtest='tail -f log/test.log | bat --paging=never -l log'
