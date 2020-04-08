MLCOMP ?= mlkit

.PHONY: all
all:
	$(MLCOMP) md5.mlb

.PHONY: test
test:
	$(MAKE) -C test test

.PHONY: clean
clean:
	rm -rf MLB *~
	$(MAKE) -C test clean
