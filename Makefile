today := $(shell date +%Y-%m-%d)

build:
	pdflatex -synctex=1 -interaction=nonstopmode "Songbook.tex"
	pdflatex -synctex=1 -interaction=nonstopmode "Songbook.tex"

release:
	git tag $(today)
	git push origin $(today)
