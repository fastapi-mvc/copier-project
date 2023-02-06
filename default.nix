{ python
, poetry2nix
}:

poetry2nix.mkPoetryEnv {
  inherit python;
  pyproject = ./pyproject.toml;
  poetrylock = ./poetry.lock;
  overrides = poetry2nix.overrides.withDefaults (final: prev: {
    pyyaml-include = prev.pyyaml-include.overridePythonAttrs (old: {
      postPatch = ''
        substituteInPlace setup.py --replace 'setup()' 'setup(version="${old.version}")'
      '';
    });
  });
}
