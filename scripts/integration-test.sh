#!/bin/bash

echo "Integration test: checking built site output"

if [ ! -f dist/index.html ]; then
  echo "NG: dist/index.html does not exist"
  exit 1
fi

if grep -q "GitHub Pages" dist/index.html; then
  echo "OK: built page contains GitHub Pages"
  exit 0
else
  echo "NG: built page does not contain GitHub Pages"
  exit 1
fi