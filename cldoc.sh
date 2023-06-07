#!/bin/bash

set -e

cldoc generate \
  -std=c++20 \
  -ferror-limit=10000000 \
  -I $(pwd) \
  -I /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1 \
  -I /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include \
  -I "external/com_google_absl" \
  -I "external/com_google_googletest/googlemock/include" \
  -I "external/com_google_googletest/googletest/include" \
  -- \
  --output=wiki \
  --basedir=$(pwd) \
  $(find -E mbo -regex ".*[.](cc|h)")
