{
  description = "Fastapi-mvc generator flake";
  nixConfig = {
    bash-prompt = ''\n\[\033[1;32m\][nix-develop:\w]\$\[\033[0m\] '';
    extra-trusted-public-keys = [
      "fastapi-mvc.cachix.org-1:knQ8Qo41bnhBmOB6Sp0UH10EV76AXW5o69SbAS668Fg="
    ];
    extra-substituters = [
      "https://fastapi-mvc.cachix.org"
    ];
  };

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    fastapi-mvc.url = "github:fastapi-mvc/fastapi-mvc";
    nixpkgs.follows = "fastapi-mvc/nixpkgs";
  };

  outputs = { self, nixpkgs, flake-parts, fastapi-mvc }@inputs:
    let
      mkApp =
        { drv
        , name ? drv.pname or drv.name
        , exePath ? drv.passthru.exePath or "/bin/${name}"
        }:
        {
          type = "app";
          program = "${drv}${exePath}";
        };
    in
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      perSystem = { config, self', inputs', pkgs, system, ... }: {
        apps = {
          fastapi-mvc = mkApp { drv = fastapi-mvc.packages.${system}.default; };
          copier = {
            type = "app";
            program = toString (pkgs.writeScript "copier" ''
              export PATH="${pkgs.lib.makeBinPath [
                fastapi-mvc.packages.${system}.default.dependencyEnv
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
                fastapi-mvc.packages.${system}.default.dependencyEnv
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
              -d github_actions=True \
              -a .generator.yml \
              update ./.
            '');
          };
        };

        devShells = {
          default = fastapi-mvc.packages.${system}.fastapi-mvc-dev.env.overrideAttrs (oldAttrs: {
            buildInputs = [
              pkgs.git
              pkgs.coreutils
              pkgs.poetry
            ];
          });
        };
      };
    };
}
