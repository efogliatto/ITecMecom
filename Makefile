filename=ITec_Mecom

pdf:
	pdflatex ${filename}.tex
	bibtex ${filename}||true
	pdflatex ${filename}.tex
	pdflatex ${filename}.tex
	makeindex ${filename}.nlo  -s nomencl.ist -o ${filename}.nls

read:
	evince ${filename}.pdf &

clean:
	rm -f *.aux *.bbl *.blg *.log *.nlo *.out *.ilg *.nls *.toc
