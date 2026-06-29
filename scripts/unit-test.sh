#!/bin/bash

echo "Unit test: checking required keyword"

if grep -q "Deployed" index.html; then
  echo "OK: required keyword found"
  exit 0
else
  echo "NG: required keyword 'Deployed' not found"
  exit 1
fi