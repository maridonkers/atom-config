all: packages.list

install-all-packages:
	apm install --package-file packages.list

packages.list: packages/*/
	apm list --installed --bare > packages.list
