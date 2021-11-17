#!/usr/bin/env bash

set -euo pipefail

main() {
    export DBT_PROFILES_DIR="$(pwd)/profiles"
    dbt run
    dbt test
}

main
