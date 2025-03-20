bun:
	bun build uglier.ts --compile --minify --sourcemap --outfile dist/uglier
	cp ./dist/uglier ./dist/pre-commit
