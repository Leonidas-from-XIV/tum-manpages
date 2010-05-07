MAKESOURCE := $(wildcard *.in)

all: $(MAKESOURCE)
	[ ! -d man6 ] || rm -r man6
	mkdir man6
	for content in ${MAKESOURCE}; do \
		filename=$${content%.in} ; \
		m4 m4npage $${content} > man6/$${filename}.6 ; \
	done ;

clean:
	git clean -f -x -d

.PHONY: clean
