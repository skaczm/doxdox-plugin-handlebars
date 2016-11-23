test:
	doxdox index.js --layout test/fixtures/template.hbs | diff test/fixtures/generated.html -

fixtures:
	doxdox index.js --layout test/fixtures/template.hbs --output test/fixtures/generated.html

docs:
	doxdox index.js --layout markdown --output DOCUMENTATION.md

.PHONY: test