#! /bin/bash

## Installs the .sty and .cls files on the local machine
## Version 1
## Feb 2, 2014
## bkc

export TEXDIR=`kpsewhich -var-value=TEXMFHOME`
cp *.sty *.cls $(TEXDIR)
texhash
