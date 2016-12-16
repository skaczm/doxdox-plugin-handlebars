BIN=node_modules/.bin

test:
	make lint
	doxdox index.js --layout test/fixtures/template.hbs | diff test/fixtures/generated.html -

lint:
	$(BIN)/eslint index.js
	$(BIN)/eslint helpers.js

fixtures:
	doxdox index.js --layout test/fixtures/template.hbs --output test/fixtures/generated.html

docs:
	doxdox index.js --layout markdown --output DOCUMENTATION.md

.PHONY: test
