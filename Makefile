DSTDIR=/etc/bash_completion.d
SRCDIR=etc/bash_completion.d

SCRIPTS=rustc cargo

OBJ=$(addprefix $(DSTDIR)/, $(SCRIPTS))
SRC=$(addprefix $(SRCDIR)/, $(SCRIPTS))

.PHONY: install uninstall

install: $(OBJ)

$(DSTDIR)/%: $(SRCDIR)/%
	cp $< $@

uninstall:
	rm $(OBJ)
