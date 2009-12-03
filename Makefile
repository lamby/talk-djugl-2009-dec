#!/usr/bin/make -f

INPUT=$(wildcard *.tex)
PDFS=$(patsubst %.tex,%.pdf, $(INPUT))

%.pdf: %.tex
	pdflatex --shell-escape -interaction nonstopmode $<
	pdflatex --shell-escape -interaction nonstopmode $<

all: $(PDFS)

clean:
	rm -f *.aux *.toc *.out *.snm *.log *.nav *.vrb *.pdf
