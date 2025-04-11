README.md: README.org ; pandoc -i $< -o $@.tmp.md --to=gfm && mv $@.tmp.md $@
