#!/usr/bin/env bash
rootdir="$(git rev-parse --show-toplevel)"
mkdir -p "${rootdir}/dist"; rm -f "${rootdir}/dist/*"
marp -w --html "${rootdir}/dist/README.md" -o "${rootdir}/dist/README.html" > /dev/null 2>&1 &; sleep 2
open "${rootdir}/dist/README.html"

