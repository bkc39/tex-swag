#! /bin/bash

### LaTeX MakeFile
### Version 2
### Mar 27, 2013
### bkc

ERROR="Too few arguments : no file name specified"
[[ $# -eq 0 ]] && echo $ERROR && exit # no args? ... print error and exit

# check that the file exists
if [ -f $1.tex ]
then
# if it exists then latex it twice, dvips, then ps2pdf,
# then remove all the unneeded files
xelatex $1.tex
xelatex $1.tex

# these lines can be appended to delete other files, such as *.out
rm *.aux
rm *.log
rm *.ps
rm *.dvi
rm *.toc
rm *.lof

# opens the file in Preview
open $1.pdf
else
# otherwise give this output line with a list of available tex files
echo the file doesnt exist! Choose one of these:
ls *.tex
fi
