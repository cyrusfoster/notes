#!/bin/bash

NAME=notes
pdflatex $NAME.tex
xdg-open $NAME.pdf

