nix:
	nix build

bun:
	bun build uglier.ts --compile --minify --sourcemap --outfile dist/uglier
	ln -sf ./uglier ./dist/pre-commit

i:
	bun i --yarn

nix-pkg:
	@bash -c 'nix shell nixpkgs#yarn2nix --command yarn2nix > ./parts/yarn.nix'
