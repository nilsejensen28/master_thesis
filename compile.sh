xelatex --shell-escape thesis
makeindex thesis.nlo -s thesis.ist -o thesis.nls # Compile nomenclature
makeindex thesis # Compile index
biber thesis # Compile bibliography
makeglossaries thesis # Compile glossary
xelatex --shell-escape thesis
xelatex --shell-escape thesis
xelatex --shell-escape thesis
#Now delete all the temporary files
rm *.aux
rm *.fdb_latexmk
rm *.toc
rm *.bbl
rm *.blg
rm *.bcf
rm *.run.xml
rm *.lof
rm *.lot
rm *.ilg
rm *.ind
rm *.idx
rm *.mw