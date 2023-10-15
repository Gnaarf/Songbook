today := $(shell date +%Y-%m-%d)

build:
	musixtex -l Songbook.tex

release:
	git tag $(today)
	git push origin $(today)
