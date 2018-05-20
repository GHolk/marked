
all: marked.min.js

marked.min.js: lib/marked.js
	uglifyjs lib/marked.js \
            --comments '/\*[^\0]+?Copyright[^\0]+?\*/' \
            -o marked.min.js

clean:
	@rm marked.js
	@rm marked.min.js

bench:
	@node test --bench

.PHONY: clean all
