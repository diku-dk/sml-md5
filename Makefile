
.PHONY: all
all:
	$(MAKE) -C lib/github.com/diku-dk/sml-md5 all

.PHONY: test
test:
	$(MAKE) -C lib/github.com/diku-dk/sml-md5 test

.PHONY: clean
clean:
	$(MAKE) -C lib/github.com/diku-dk/sml-md5 clean
	rm -rf MLB *~ .*~
