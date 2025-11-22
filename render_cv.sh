#!/bin/bash

node scripts/prepare-json.js

PUBLIC_PDF=true npm run build

/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
    --headless \
    --virtual-time-budget=600000000 \
    --no-pdf-header-footer \
    --print-to-pdf=roelfs_cv.pdf \
    dist/index.html

PUBLIC_PDF=false npm run build

mv roelfs_cv.pdf dist/
