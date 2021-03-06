DOC = questionnaire

DOCSRC = $(DOC).tex
DOCPDF = $(DOC).pdf

default: $(DOCPDF)

$(DOCPDF): $(DOCSRC)
	pdflatex $(DOCSRC)
	pdflatex $(DOCSRC)

clean:
	rm -f $(DOCPDF)
	rm -f *.aux *.lof *.log *.lot *.synctex.gz
	rm -f *.toc
	rm -f *.bbl
