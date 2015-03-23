#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )"

function required_run() {
  local run_it="$@"
  if [ -n "$run_it" ]; then
    echo "Requred run: $run_it"
    eval $run_it
    if [ $? -ne 0 ]; then
      echo "Error while running: $run_it"
      exit 1
    fi
  fi
}

cd provision

required_run ./essentials.sh
required_run ./php.sh
required_run ./composer.sh
required_run ./node.sh
required_run ./decking.sh
required_run ./docker.sh
required_run ./jq.sh
