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
          default = pkgs.stdenv.mkDerivation { };
        };
      };
    };
}
