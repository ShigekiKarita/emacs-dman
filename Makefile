.PHONY: test

emacs_module.d: emacs_module.dpp
	dub fetch dpp
	dub run dpp -- --keep-d-files --preprocess-only emacs_module.dpp

dman.so: emacs_module.d dman.d
	dmd -shared dman.d -of=dman.so

test: dman.so test.el
	emacs -batch -l test.el
