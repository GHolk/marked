
all: marked.js marked.min.js

marked.js: lib/marked.js
	cp -f lib/marked.js marked.js

marked.min.js: marked.js
	uglifyjs lib/marked.js \
            --comments '/\*[^\0]+?Copyright[^\0]+?\*/' \
            -o marked.min.js

clean:
	@rm marked.js
	@rm marked.min.js

bench:
	@node test --bench

.PHONY: clean all
