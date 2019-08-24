#!/bin/bash -e

export IGNORE_FILES=$(ls -p | grep -v /)

detect_changed_folders() {
    echo "detecting changes for this build"
    folders=`git diff --name-only $SHIPPABLE_COMMIT_RANGE | sort -u | awk 'BEGIN {FS="/packages"} {print $1}' | uniq`
    export changed_components=$folders
}

run_tests() {
    for component in $changed_components
    do
    echo "----------------------------------------------"
    echo "$component has changed"
    if ! [[ " ${IGNORE_FILES[@]} " =~ "$component" ]]; then
    echo "-------------------Running tests for $component---------------------"
    echo "TODO: add your test scripts"
    #  cd "$component"
    #  ./run.sh "$component"
    cd ..
    else
    echo "Ignoring this change"
    fi
    done
}

if [ "$IS_PULL_REQUEST" != true ]; then
    detect_changed_folders
    run_tests
else
    echo "skipping because it's a PR"
fi
