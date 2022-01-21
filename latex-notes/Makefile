DOCUMENT=notes
SHELL=/bin/bash

.SILENT:
all:
	-pdflatex -synctex=1 -shell-escape -interaction=nonstopmode -file-line-error $(DOCUMENT).tex > complog.txt
	-pdflatex -synctex=1 -shell-escape -interaction=nonstopmode -file-line-error $(DOCUMENT).tex > complog.txt

clean:
	-rm -rf *.log *.aux *.bcf *.blg *.idx *.lof *.lot *.out *.ptc *.xml *.bbl *.gz *.spl *.nav *.snm *.toc
