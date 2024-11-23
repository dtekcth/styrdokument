all:
	latexmk -xelatex -outdir=aux Policy.tex
	cp aux/Policy.pdf .

	latexmk -xelatex -outdir=aux sektionsoveraller-kontrakt.tex
	cp aux/sektionsoveraller-kontrakt.pdf .

	latexmk -xelatex -outdir=aux sektionsoveraller-policy.tex
	cp aux/sektionsoveraller-policy.pdf .
