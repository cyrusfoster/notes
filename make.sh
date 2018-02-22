#!/bin/bash

# Make pdf_tex files from svgs
# Todo: automate this for all svg files
inkscape -D -z --file=svg/hyperbolic.svg --export-pdf=svg/hyperbolic.pdf --export-latex

NAME=notes
pdflatex $NAME.tex
xdg-open $NAME.pdf

