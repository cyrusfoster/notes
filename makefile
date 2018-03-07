

PROJ=notes

SVG=$(wildcard svg/*.svg)
PDF_LATEX = $(SVG:.svg=.pdf_latex) 

main: $(PDF_LATEX)
	pdflatex $(PROJ).tex
	xdg-open $(PROJ).pdf

%.pdf_latex: %.svg
	inkscape -D -z \
          --file=$< \
          --export-pdf=$(basename $@).pdf \
     	  --export-latex


