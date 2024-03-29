TAG_PREFIX := $(shell date +%Y-%m-%d)
TAG_COUNT := $(shell git tag -l "$(TAG_PREFIX)*" | wc -l | tr -d ' ')

NEW_TAG := $(shell if [ $(TAG_COUNT) -eq 0 ]; then \
              echo $(TAG_PREFIX); \
                else \
                  HEX_COUNT=$$(printf '%x' $(TAG_COUNT)); \
                echo "$(TAG_PREFIX)_$$HEX_COUNT"; \
             fi)

build:
	musixtex -l Songbook.tex

release:
	git tag $(NEW_TAG)
	git push origin $(NEW_TAG)
