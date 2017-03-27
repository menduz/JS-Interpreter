#!/bin/bash
set -x
./node_modules/@code-dot-org/js-interpreter-tyrant/bin/run.js --threads 1 -run --diff --verbose --splitInto $CIRCLE_NODE_TOTAL --splitIndex $CIRCLE_NODE_INDEX --hostPath bin/run.js
t1=$?
mv tyrant/test-results-new.json $CIRCLE_ARTIFACTS
exit $t1
