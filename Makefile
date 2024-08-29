SHELL=/bin/bash

filename=thesis

pdf:
	mkdir -p build
	latexmk -xelatex  -interaction=nonstopmode -file-line-error -outdir=build ${filename}.tex 
	mv build/${filename}.pdf .

read:
	evince build/${filename}.pdf &

clean:
	rm -f build/${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg,nls,nlo,ist,idx}