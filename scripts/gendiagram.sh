#!/usr/bin/env bash
rootdir="$(git rev-parse --show-toplevel)"

"${rootdir}/node_modules/.bin/mmdc" -i "${rootdir}/data/hpa.diagram" -o "${rootdir}/assets/hpa.svg"

