#!/usr/bin/env bash
rootdir="$(git rev-parse --show-toplevel)"
curdir="$PWD"

rm -rf "${rootdir}/dist"
mkdir -p "${rootdir}/dist"

cp -r "${rootdir}/assets" "${rootdir}/dist/assets"
cp "${rootdir}/README.md" "${rootdir}/dist/"

cd "${rootdir}/dist"
marp -w --html "README.md" > /dev/null 2>&1 &
cd "$curdir"

sleep 2; open "${rootdir}/dist/README.html"

