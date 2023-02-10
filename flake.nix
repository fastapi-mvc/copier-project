{
  description = "Fastapi-mvc generator flake";
  nixConfig.bash-prompt = ''\n\[\033[1;32m\][nix-develop:\w]\$\[\033[0m\] '';

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    fastapi-mvc.url = "github:fastapi-mvc/fastapi-mvc?ref=0.25.0";
    nixpkgs.follows = "fastapi-mvc/nixpkgs";
  };

  outputs = { self, nixpkgs, flake-utils, fastapi-mvc }:
    {
      overlays.default = nixpkgs.lib.composeManyExtensions [
        fastapi-mvc.overlays.default
      ];
    } // (flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ self.overlays.default ];
        };
      in
      rec {
        apps = {
          fastapi-mvc = flake-utils.lib.mkApp { drv = pkgs.fastapi-mvc; };
          copier = {
            type = "app";
            program = toString (pkgs.writeScript "copier" ''
              export PATH="${pkgs.lib.makeBinPath [
                pkgs.fastapi-mvc.dependencyEnv
                pkgs.git
                pkgs.coreutils
              ]}"
              copier $@
            '');
          };
          update = {
            type = "app";
            program = toString (pkgs.writeScript "update" ''
              export PATH="${pkgs.lib.makeBinPath [
                pkgs.fastapi-mvc.dependencyEnv
                pkgs.git
                pkgs.coreutils
              ]}"
              copier -x template/** -x copier.yml -x *.py -x CHANGELOG.md \
              $@ \
              -d generator=project \
              -d nix=True \
              -d license=MIT \
              -d repo_url=https://github.com/fastapi-mvc/copier-project \
              -d copyright_date=2022 \
              -a .generator.yml \
              update ./.
            '');
          };
        };

        devShells = {
          default = pkgs.fastapi-mvc-dev.env.overrideAttrs (oldAttrs: {
            buildInputs = [
              pkgs.git
              pkgs.coreutils
              pkgs.poetry
            ];
          });
        };
      }));
}
