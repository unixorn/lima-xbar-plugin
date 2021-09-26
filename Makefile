i: lint install
install:
	cp lima-plugin ~/Library/Application\ Support/xbar/plugins/lima-plugin.10s

l: lint
lint:
	shellcheck lima-plugin

requirements.txt:
	poetry export -f requirements.txt --output requirements.txt