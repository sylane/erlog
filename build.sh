#!/bin/bash

ROOT=$(cd $(dirname $0); pwd)

MODULES=( erlog_pathlib erlog erlog_sup erlog_logger )
TESTS=( test_erlog_pathlib )

for m in ${MODULES[@]}; do
    erlc -pz $ROOT/ebin -o $ROOT/ebin -I $ROOT/include $ROOT/src/$m.erl
done

for m in ${TESTS[@]}; do
    erlc -pz $ROOT/ebin -o $ROOT/ebin -I $ROOT/include $ROOT/test/$m.erl
done

