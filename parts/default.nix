{ inputs, ... }:
{
  systems = [ "x86_64-linux" ];
  perSystem =
    { system, pkgs, ... }:
    {
      config = {
        _module.args = {
          pkgs = import inputs.nixpkgs {
            inherit system;
            overlays = [
              inputs.configuration.overlays.default
              (final: prev: {
                nvim = (
                  prev.nvim.extend {
                    plugins = {
                      lsp.servers = {
                        ts_ls.enable = true;
                        jsonls.enable = true;
                      };
                    };
                  }
                );
              })
            ];
          };
        };
        devShells = {
          default = pkgs.mkShell {
            buildInputs = with pkgs; [
              nvim
              bun
            ];
          };
        };
        packages = {
          default = pkgs.mkYarnPackage rec {
            name = "uglier";
            version = "1.0.0";
            src = ../.;
            packageJSON = ../package.json;
            yarnLock = ../yarn.lock;
            yarnNix = ./yarn.nix;
            nativeBuildInputs = with pkgs; [
              bun
              fd
            ];
            phases = [
              "unpackPhase"
              "patchPhase"
              "updateAutotoolsGnuConfigScriptsPhase"
              "configurePhase"
              "buildPhase"
              "installPhase"
            ];
            buildPhase = ''
              runHook preBuild
              bun build deps/uglier/uglier.ts --compile --minify --sourcemap --outfile dist/uglier
              runHook postBuild
            '';
            installPhase = ''
              runHook preInstall
              mkdir -p $out/bin
              cp dist/${name} $out/bin/
              ln $out/bin/${name} $out/bin/pre-commit
              runHook postInstall
            '';
            meta = {
              mainProgram = "uglier";
            };
          };
        };
      };
    };
}
