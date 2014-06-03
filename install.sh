#!/bin/bash

## Installs the .sty and .cls files on the local machine
## Version 2
## May 30, 2014
## bkc

TEXDIR=`kpsewhich -var-value=TEXMFHOME`/tex/latex
cp *.sty *.cls $TEXDIR
texhash
