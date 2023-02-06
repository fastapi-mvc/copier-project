{ pkgs ? import
    (builtins.fetchTarball {
      name = "nixos-22.11";
      url = "https://github.com/NixOS/nixpkgs/archive/04a75b2eecc0acf6239acf9dd04485ff8d14f425.tar.gz";
      sha256 = "0gyh0n5sh9sql9jbkz7lc8244k8d9dacrq35224s2c6fq43lnbcg";
    })
    { }
}:

let
  copier = pkgs.callPackage ./default.nix {
    python = pkgs.python39;
    poetry2nix = pkgs.poetry2nix;
  };
in
copier.env.overrideAttrs (oldAttrs: {
  buildInputs = [
    pkgs.git
    pkgs.poetry
  ];
})
