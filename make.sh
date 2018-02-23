#!/bin/bash

# Todo: adapt this into an actual makefile

# Make pdf_tex files from svgs
for filename in svg/*.svg; do
  echo "Making $filename..."
  inkscape -D -z \
     --file=$filename \
     --export-pdf=svg/$(basename $filename .svg).pdf \
     --export-latex
done

NAME=notes
echo "Making $NAME"
pdflatex $NAME.tex
xdg-open $NAME.pdf

