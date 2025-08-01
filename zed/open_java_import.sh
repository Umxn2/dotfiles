#!/bin/bash
JDK_SRC="jdk-src/java.base"
INPUT=$(sed -n "${ZED_ROW}p" "$ZED_FILE")
CLEANED=$(awk -F'[;[:space:]]+' '{print $2}' <<<"$INPUT")
REL_PATH=$(echo "$CLEANED" | tr '.' '/')".java"
FULL_PATH="$HOME/$JDK_SRC/$REL_PATH"
if [ -f "$FULL_PATH" ]; then
  nvim -R "$FULL_PATH"
fi
