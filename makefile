

PROJ=notes

SVG=$(wildcard svg/*.svg)
PDF_LATEX = $(SVG:.svg=.pdf_tex) 

main: $(PDF_LATEX)
	pdflatex $(PROJ).tex
	xdg-open $(PROJ).pdf

%.pdf_tex: %.svg
	inkscape -D -z \
          --file=$< \
          --export-pdf=$(basename $@).pdf \
     	  --export-latex

clean:
	rm -f svg/*.pdf svg/*.pdf_tex *.pdf *.aux *.log *.out

