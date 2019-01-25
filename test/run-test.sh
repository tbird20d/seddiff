#!/bin/bash
#
# use clitest with the 'seddiff-tests' data file
# to run a series of tests for seddiff
#
# Run seddiff from one directory up from test directory
# find directory where this script (run-test.sh) is located
ARG0="${BASH_SOURCE[0]}"
temp="$(dirname $ARG0)"
TEST_DIR="$(realpath $temp)"
cd ${TEST_DIR}
export PATH=$(realpath "$TEST_DIR/.."):$PATH

./clitest seddiff-tests
