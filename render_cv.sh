#!/bin/bash

quarto render cv.qmd -P pdf_mode:false --metadata format.html.embed-resources=false -o index.html

quarto render cv.qmd -P pdf_mode:true --metadata format.html.embed-resources=true -o tmp.html
    
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
    --headless \
    --virtual-time-budget=100000000 \
    --print-to-pdf=roelfs_cv.pdf \
    tmp.html

rm tmp.html