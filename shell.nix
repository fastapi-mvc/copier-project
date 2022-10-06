{ pkgs ? import <nixpkgs> { } }:

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
