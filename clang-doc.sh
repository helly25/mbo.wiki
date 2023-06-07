#!/bin/bash

set -e

clang-doc \
  --doxygen=0 \
  --format=md \
  --output=wiki \
  -p=$(pwd) \
  --project-name="MBO, a C++20 library" \
  --repository="https://github.com/helly25/mbo/tree/main" \
  --source-root=$(pwd) \
  --executor=all-TUs \
  --filter='mbo/.*[.](cc|h)' \
  compile_commands.json

#  $(find -E mbo -regex ".*[.](cc|h)")