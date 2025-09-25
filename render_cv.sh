#!/bin/bash

quarto render cv.qmd -P pdf_mode:false -o index.html

quarto render cv.qmd -P pdf_mode:true -o tmp.html
    
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
    --headless \
    --virtual-time-budget=600000000 \
    --print-to-pdf=cv.pdf \
    tmp.html

rm tmp.html