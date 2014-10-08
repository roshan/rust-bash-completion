DST=/etc/bash_completion.d/rustc

.PHONY: install uninstall

install: $(DST) 

$(DST): etc/bash_completion.d/rustc
	cp $< $@

uninstall:
	rm $(DST)
