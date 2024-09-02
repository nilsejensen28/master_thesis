SHELL=/bin/bash

filename=thesis

pdf:
	mkdir -p build
	latexmk -xelatex  -interaction=nonstopmode -file-line-error --shell-escape -f -outdir=build ${filename}.tex 
	latexmk -xelatex  -interaction=nonstopmode -file-line-error --shell-escape -f -outdir=build ${filename}.tex 
	mv build/${filename}.pdf .

read:
	evince build/${filename}.pdf &

clean:
	rm -f -r build