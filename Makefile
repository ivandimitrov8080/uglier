build:
	npx esbuild prettier-wrapper.js --bundle --platform=node --format=cjs --external:fs --outfile=dist/prettier-bundle.js
	npx pkg dist/prettier-bundle.js --targets=latest-linux-x64 --output prettier-static
