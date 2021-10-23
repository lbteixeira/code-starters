SHELL=/bin/bash

.SILENT:
letter:
	echo "Compiling letter to editor"
	-pdflatex -synctex=1 -interaction=nonstopmode -file-line-error cover-letter.tex
	
response:
	echo "Compiling response to reviewers"
	-pdflatex -synctex=1 -interaction=nonstopmode -file-line-error response-reviewers.tex

clean:
	-rm -rf *.log *.aux *.bcf *.blg *.idx *.lof *.lot *.out *.ptc *.xml *.bbl *.gz *.spl
