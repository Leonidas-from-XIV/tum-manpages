MAKESOURCE := $(wildcard *.in)

all: $(MAKESOURCE)
	#mkdir -f man6
	for content in ${MAKESOURCE}; do \
		filename=$${content%.in} ; \
		m4 m4npage $${content} > man6/$${filename}.6 ; \
	done ;

clean:
	git clean -f -x -d

.PHONY: clean
