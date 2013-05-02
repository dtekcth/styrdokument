default: all

all: stadgar reglemente ekonomi

clean:
	rm stadgar.aux stadgar.toc stadgar.log
	rm reglemente.aux reglemente.toc reglemente.log
	rm ekonomiskt_reglemente.aux ekonomiskt_reglemente.toc ekonomiskt_reglemente.log

stadgar:
	pdflatex stadgar.tex
	pdflatex stadgar.tex

reglemente:
	pdflatex reglemente.tex
	pdflatex reglemente.tex

ekonomi:
	pdflatex ekonomiskt_reglemente.tex
	pdflatex ekonomiskt_reglemente.tex
