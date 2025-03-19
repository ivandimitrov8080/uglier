build:
	npx esbuild prettier-wrapper.js --bundle --platform=node --format=cjs --external:fs --outfile=dist/prettier-bundle.js
	npx pkg dist/prettier-bundle.js --targets=latest-linux-x64 --output prettier-static

box:
	npx esbuild prettier-wrapper.js --bundle --platform=node --format=cjs --external:fs --outfile=dist/prettier-bundle.js
	npx boxednode -s dist/prettier-bundle.js -t example

bun:
	npx esbuild prettier-wrapper.js --bundle --platform=node --format=cjs --external:fs --outfile=dist/prettier-bundle.js
	bun build prettier-wrapper.js --compile --outfile prettier-static
