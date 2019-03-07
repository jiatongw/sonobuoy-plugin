#!/bin/bash

RESULTS_DIR="${RESULTS_DIR:-/tmp/results}"

uname -a > "${RESULTS_DIR}/out.txt"
echo -n "${RESULTS_DIR}/out.txt" > "${RESULTS_DIR}/done"


