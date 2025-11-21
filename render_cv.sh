#!/bin/bash

npm run build    

/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
    --headless \
    --no-pdf-header-footer \
    --print-to-pdf=dist/roelfs_cv.pdf \
    dist/index.html
