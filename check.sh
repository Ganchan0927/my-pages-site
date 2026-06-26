#!/bin/bash

echo "Check if page contains keyword"

if grep -q "Deployed" index.html; then
  echo "OK: keyword found"
  exit 0
else
  echo "NG: keyword not found"
  exit 1
fi