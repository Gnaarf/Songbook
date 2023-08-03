# Songbook

First thing, [here's the pdf](https://github.com/Huluk/Songbook/releases/tag/latest)

Apart from that, technical stuff:

- compiling requires a specific build chain. I use TeXStudio's "DVI->PDF Chain".
  The reason is that [MusixTEX](https://www.ctan.org/pkg/musixtex) (which I use
  for the fancy tabs) has some kind of three pass system, and that system in
  turn requires some more complicated build chain.

- compiling may take some minutes (at least on my PC)

- The github release action should take care of the final compile step, so you
  only need to compile to verify your changes.

- Trigger the release using `make release`, which tags the current commit with
  the date and uploads it. Create a manual tag if you want to add a second tag
  for the same day – any tag causes a new release.
