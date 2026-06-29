#!/bin/bash

echo "Static analysis: checking HTML structure and forbidden words"

if [ ! -f index.html ]; then
  echo "NG: index.html does not exist"
  exit 1
fi

if ! grep -q "<html" index.html; then
  echo "NG: <html> tag not found"
  exit 1
fi

if grep -q "WIP" index.html; then
  echo "NG: WIP text found. Do not deploy unfinished content."
  exit 1
fi

echo "OK: static analysis passed"
exit 0