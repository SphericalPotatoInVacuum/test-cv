#!/bin/sh

dir=$(dirname $1)
base=$(basename $1)
cd "${dir}"
if ! lualatex -interaction=nonstopmode "${base}"; then
    echo "Compilation failed"
    exit 1
fi
rm *.aux *.out *.log
