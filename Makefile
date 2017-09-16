all: packages.list

install-all-packages:
	apm-beta install --package-file packages.list

packages.list: packages/*/
	apm-beta list --installed --bare > packages.list
