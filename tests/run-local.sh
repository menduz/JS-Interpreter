#!/bin/bash
set -x
curl https://codeload.github.com/tc39/test262/zip/89160ff5b7cb6d5f8938b4756829100110a14d5f -o test262.zip
unzip -q test262.zip
rm -rf tyrant/test262
mv test262-89160ff5b7cb6d5f8938b4756829100110a14d5f tyrant/test262
./node_modules/@code-dot-org/js-interpreter-tyrant/bin/run.js --threads 1 --run --diff --verbose --splitInto 1 --splitIndex 1 --hostPath bin/run.js
./node_modules/@code-dot-org/js-interpreter-tyrant/bin/run.js --threads 1 --rerun --verbose --hostPath bin/run.js
t1=$?

exit $t1
