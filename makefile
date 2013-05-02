default: all

all: stadgar reglemente ekonomi policy

# Allt är dubbelt för annars får man inte TOC

clean:
	rubber --clean stadgar.tex
	rubber --clean reglemente.tex
	rubber --clean ekonomiskt_reglemente.tex
	rubber --clean policy.tex

stadgar:
	rubber -d stadgar.tex

reglemente:
	rubber -d reglemente.tex

ekonomi:
	rubber -d ekonomiskt_reglemente.tex

policy:
	rubber -d policy.tex
