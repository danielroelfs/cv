#!/bin/bash

EMBED_RESOURCES=false quarto render cv.qmd -P pdf_mode:false -o index.html

EMBED_RESOURCES=true quarto render cv.qmd -P pdf_mode:true -o tmp.html

/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
    --headless \
    --virtual-time-budget=600000000 \
    --print-to-pdf=roelfs_cv.pdf \
    tmp.html

rm tmp.html