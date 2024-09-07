SHELL=/bin/bash

filename=thesis
bibliography=bibliography

pdf:
	mkdir -p build
	latexmk -xelatex  -interaction=nonstopmode -file-line-error --shell-escape -f -outdir=build ${filename}.tex 
	latexmk -xelatex  -interaction=nonstopmode -file-line-error --shell-escape -f -outdir=build ${filename}.tex 
	mv build/${filename}.pdf .

tidy:
	npm install bibtex-tidy
	bibtex-tidy --curly --numeric --tab --align=13 --duplicates=key --no-escape --sort-fields --remove-empty-fields ${bibliography}.bib
	rm -f package-lock.json package.json $(bibliography).bib.original
	sudo rm -f -r node_modules/

read:
	evince build/${filename}.pdf &

clean:
	rm -f -r build