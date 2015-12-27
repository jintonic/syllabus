basename=syllabus

.PHONY: xpdf xdvi dvi ps clean Clean plot dist

dvi:
	latexmk -dvi ${basename}
xdvi:
	latexmk -dvi -pvc ${basename}
pdf:
	latexmk -pdfps ${basename}
xpdf:
	latexmk -pdfps -pvc ${basename}
ps:
	latexmk -ps ${basename}
clean:
	latexmk -C
	rm -f *convert*.pdf *~
Clean:clean
	rm -f *.txt ${basename}.spl ${basename}.bbl

dist:
	tar cfvz ${basename}.tar.gz *.bib *.tex *.eps *akefile
