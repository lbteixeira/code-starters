DOCUMENT=article
SHELL=/bin/bash

.SILENT:
all:
	echo "Started compilation"
	echo "Running pdfLatex - First time"
	-pdflatex -synctex=1 -interaction=nonstopmode -file-line-error $(DOCUMENT).tex > complog.txt
	
	echo "Running bibtex - Compiling references"
	-biber $(DOCUMENT) >> complog.txt
	
	echo "Running pdfLatex - Second time"
	-pdflatex -synctex=1 -interaction=nonstopmode -file-line-error $(DOCUMENT).tex >> complog.txt
	
	echo "Running pdfLatex - Third time"
	-pdflatex -synctex=1 -interaction=nonstopmode -file-line-error $(DOCUMENT).tex >> complog.txt
	
once:
	-pdflatex -synctex=1 -interaction=nonstopmode -file-line-error $(DOCUMENT).tex > complog.txt

no-bib:
	-pdflatex -synctex=1 -interaction=nonstopmode -file-line-error $(DOCUMENT).tex > complog.txt
	-pdflatex -synctex=1 -interaction=nonstopmode -file-line-error $(DOCUMENT).tex >> complog.txt

bib:
	-biber $(DOCUMENT) > complog.txt

clean:
	-rm -rf *.log *.aux *.bcf *.blg *.idx *.lof *.lot *.out *.ptc *.xml *.bbl *.gz *.spl
