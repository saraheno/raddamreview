PDFLATEX := pdflatex
BIBTEX := bibtex
FILE := rad_dam_review

%.pdf:  %.tex
	$(PDFLATEX) $(FILE).tex && $(BIBTEX) $(FILE) && \
	$(PDFLATEX) $(FILE).tex && $(PDFLATEX) $(FILE).tex

all: $(FILE).pdf

.PHONY: clean

clean:
	rm -f *.dvi *.aux *.log *.bbl *.blg *~ rad_dam_review.pdf
