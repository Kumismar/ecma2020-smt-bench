#!/bin/bash

DIR="smt_out"
EXEC_TYPE=$1
EXEC="./z3-$EXEC_TYPE"
TIMEOUT="5s"

if [ ! -d $DIR ]; then
    echo "Testbed folder does not exist"
    echo "Current directory: $(pwd)"
    exit 1
fi

COUNTER_PASSED=0
COUNTER_FAILED=0
UNKNOWN=0
TIMED_OUT=0

rm -rf test_output
mkdir -p test_output

for file in "$DIR"/*; do
    REAL_SAT=$(cat "$file" | grep -c "(set-info :status sat)")

    echo "Running test $file"
    OUTPUT=$(timeout $TIMEOUT $EXEC -file:"$file")
    EXPECTED=$(grep ":status" "$file" | awk '{print $3}' | tr -d ')')
    EXIT_CODE=$?

    if [ $EXIT_CODE -eq 124 ]; then
        ((TIMED_OUT++))
        echo -e "\e[33mTimeout: $file\e[0m"
        continue
    fi

    if echo "$OUTPUT" | grep -q "^sat$"; then
        RESULT="sat"
    elif echo "$OUTPUT" | grep -q "^unsat$"; then
        RESULT="unsat"
    else
        RESULT="unknown"
    fi

    # if the result is not expected, write the output to test_output/file.
    if [ "$RESULT" != "$EXPECTED" ]; then
        if [ "$RESULT" != "unknown" ]; then
            SUFFIX="_failed"
            echo "$(cat "$file")" > "test_output/$(basename "$file")$SUFFIX"
            echo "$OUTPUT" >> "test_output/$(basename "$file")$SUFFIX"
        fi
    fi

    if [ "$RESULT" == "$EXPECTED" ]; then
        ((COUNTER_PASSED++))
    elif [ "$RESULT" == "unknown" ]; then
        ((UNKNOWN++))
        echo -e "\e[33mUnknown: $file\e[0m"
    else
        echo -e "\e[31mFailed: $file\e[0m"
        ((COUNTER_FAILED++))
    fi
done

echo -e "\e[32mPassed: $COUNTER_PASSED\e[0m, \e[31mFailed: $COUNTER_FAILED\e[0m, \e[33mTimed out: $TIMED_OUT\e[0m, \e[33mUnknown: $UNKNOWN\e[0m"
