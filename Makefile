bun:
	bun build uglier.ts --compile --minify --sourcemap --outfile dist/uglier
	ln ./dist/uglier ./dist/pre-commit

i:
	bun i --yarn

nix-pkg-cfg:
	@bash -c 'nix shell nixpkgs#yarn2nix --command yarn2nix > ./parts/yarn.nix'

nix-pkg:
	nix build
