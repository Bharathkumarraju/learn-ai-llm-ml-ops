# Minimal makefile for Sphinx documentation
#
# Put it first so that "make" without argument is like "make help".
help:
	@python3.11 -msphinx -M help "aillmops" "aillmops/_build"

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@echo "\n--- Building AILLM Notes ---"
	@python3.11 -msphinx -M $@ "aillmops" "aillmops/_build"
