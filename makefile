default: all

all: stadgar reglemente ekonomiskt_reglemente policy

clean:
	rm stadgar.pdf reglemente.pdf ekonomiskt_reglemente.pdf policy.pdf

stadgar:
	rubber -d stadgar.tex
	rubber --clean stadgar.tex

reglemente:
	rubber -d reglemente.tex
	rubber --clean reglemente.tex

ekonomiskt_reglemente:
	rubber -d ekonomiskt_reglemente.tex
	rubber --clean ekonomiskt_reglemente.tex

policy:
	rubber -d policy.tex
	rubber --clean policy.tex
