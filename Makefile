i: lint install
install:
	cp lima-plugin ~/Library/Application\ Support/xbar/plugins/lima-plugin.10s

l: lint
lint:
	shellcheck lima-plugin

r: requirements
requirements:
	poetry export -f requirements.txt --output requirements.txt

f: format
format:
	black lima-plugin

t: test
test: format
	poetry run ./lima-plugin
