all: report.pdf

report.pdf: report.tex ../*.m
	xelatex -shell-escape report.tex
	rm -rf _minted-report
	rm *.log *.aux
clean:
	rm report.pdf
