#!/bin/bash

set -e

standardese \
    -I $(pwd) \
    -I "external/com_google_absl" \
    -I "external/com_google_googletest/googlemock/include" \
    -I "external/com_google_googletest/googletest/include" \
    --input.blacklist_ext=".bazel" \
    --input.blacklist_ext=".bzl" \
    --input.blacklist_ext=".txt" \
    --input.commands_dir=$(pwd) \
    --input.standard=c++20 \
    --output.prefix=wiki/ \
    mbo
