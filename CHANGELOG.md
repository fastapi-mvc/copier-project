# Changelog

This file documents changes to [fastapi-mvc/copier-project](https://github.com/fastapi-mvc/copier-project). The release numbering uses [semantic versioning](http://semver.org).

## Unreleased

### Internal

* Update flake nixpkgs to 23.05. PR [#27](https://github.com/fastapi-mvc/copier-project/pull/27)
* Bump project dependencies. PR [#27](https://github.com/fastapi-mvc/copier-project/pull/27)
  * Bump fastapi from 0.92.0 to 0.98.0
  * Bump uvicorn from 0.20.0 to 0.22.0
  * Bump myst-parser from 0.19.0 to 1.0.0
  * Bump pytest from 7.2.1 to 7.4.0
  * Bump pytest-asyncio from 0.20.3 to 0.21.0
  * Bump black from 23.1.0 to 23.3.0
  * Bump redis from 4.5.4 to 4.5.5
  * Bump mypy from 1.0.1 to 1.4.1
* Bump poetry2nix from 1.40.1 to 1.42.0. PR [#26](https://github.com/fastapi-mvc/copier-project/pull/26)
* Update project GitHub Actions. PR [#25](https://github.com/fastapi-mvc/copier-project/pull/25)
  * Bump cachix/install-nix-action from 20 to 22
  * Bump DeterminateSystems/nix-installer-action from 1 to 4
  * Bump DeterminateSystems/update-flake-lock from 17 to 19

## 0.6.0 (26.03.2023)

### Features

* Refactor templated `flake.nix` using [flake-parts](https://github.com/hercules-ci/flake-parts). PR [#19](https://github.com/fastapi-mvc/copier-project/pull/19)
* Template workflow for updating Nix flake inputs. PR [#19](https://github.com/fastapi-mvc/copier-project/pull/19)

### Internal

* Update generator with changes from [copier-generator](https://github.com/fastapi-mvc/copier-generator) 0.4.1 release. PR [#18](https://github.com/fastapi-mvc/copier-project/pull/18)

## 0.5.0 (01.03.2023)

### Fixed

* Typo in cache key in templated main.yml workflow [86e8e28](https://github.com/fastapi-mvc/copier-project/pull/17/commits/86e8e28c2af81ecbcda14e0ce2a50b624bc28e8d).

### Features

* Add type checking [fastapi-mvc/fastapi-mvc#178](https://github.com/fastapi-mvc/fastapi-mvc/issues/178). PR [#17](https://github.com/fastapi-mvc/copier-project/pull/17)

### Internal

* Pin nix version in nix-install-action in templated nix workflow [6b4a13c](https://github.com/fastapi-mvc/copier-project/commit/6b4a13ca08b2590a6003ab46a5ef27ac1b139341).
* Pin nix version in nix-install-action [8106966](https://github.com/fastapi-mvc/copier-project/commit/8106966aaaf40bdcee76079e4a4842128148dcbb).
* Update generator with changes from [copier-generator](https://github.com/fastapi-mvc/copier-generator) 0.2.0 release. PR [#14](https://github.com/fastapi-mvc/copier-project/pull/14)
* Update project dependencies. PR [#16](https://github.com/fastapi-mvc/copier-project/pull/16)
  * Bump fastapi from 0.89.1 to 0.92.0.
  * Bump myst-parser from 0.18.1 to 0.19.0.
  * Bump redis from 4.4.2 to 4.5.1.
  * Bump flake8-docstrings from 1.6.0 to 1.7.0.
  * Bump aiohttp from 3.8.3 to 3.8.4.
* Bump cachix/install-nix-action from 18 to 20 [b4e1ef0](https://github.com/fastapi-mvc/copier-project/commit/b4e1ef0740cb1362daa83dc153d1349d71ecb62d).
* Add development dependency - fastapi-mvc [09f7468](https://github.com/fastapi-mvc/copier-project/commit/09f7468d95fffd9256e9dfc6ecd36baea4aa65b8).

## 0.4.0 (07.02.2023)

### Internal

* Update Poetry to 1.3.x. PR [#13](https://github.com/fastapi-mvc/copier-project/pull/13)
* Update project dependencies. PR [#12](https://github.com/fastapi-mvc/copier-project/pull/12)
  * Bump fastapi from 0.88.0 to 0.89.1.
  * Bump pytest from 7.2.0 to 7.2.1.
  * Bump black from 22.8.0 to 23.1.0.
  * Bump requests from 2.28.1 to 2.28.2.
  * Bump httpx from 0.23.1 to 0.23.3.
* Update project GitHub Actions. PR [#12](https://github.com/fastapi-mvc/copier-project/pull/12)
  * Bump fkirc/skip-duplicate-actions from 5.2.0 to 5.3.0.

## 0.3.0 (01.01.2023)

### Features

* Refactor and improve copier-project tests suite [fastapi-mvc/fastapi-mvc#228](https://github.com/fastapi-mvc/fastapi-mvc/issues/228). PR [#10](https://github.com/fastapi-mvc/copier-project/pull/10)

## 0.2.0 (15.12.2022)

### Features

* Refactor Nix expressions to flake [fastapi-mvc/fastapi-mvc#217](https://github.com/fastapi-mvc/fastapi-mvc/issues/217). PR [#7](https://github.com/fastapi-mvc/copier-project/pull/7)
* Add support for Python3.11 [fastapi-mvc/fastapi-mvc#199](https://github.com/fastapi-mvc/fastapi-mvc/issues/199). PR [#9](https://github.com/fastapi-mvc/copier-project/pull/9)

### Docs

* Fix api documentation tocdepth [c0de3c0](https://github.com/fastapi-mvc/copier-project/commit/c0de3c07f47dee42cb6ffa974e89e4021d737c38).
* Update nix documentation [0938db7](https://github.com/fastapi-mvc/copier-project/commit/0938db7b519b675a14bba968db9833e013ddc3cc).

### Internal

* Update project dependencies. PR [#8](https://github.com/fastapi-mvc/copier-project/pull/8)
  * Bump pytest from 7.1.3 to 7.2.0.
  * Bump pytest-asyncio from 0.19.0 to 0.20.3.
  * Bump Sphinx from 5.2.3 to 5.3.0.
  * Bump uvicorn from 0.18.3 to 0.20.0.
  * Bump fastapi from 0.85.1 to 0.88.0.
* Add development dependency - httpx. PR [#8](https://github.com/fastapi-mvc/copier-project/pull/8)
* Update project GitHub Actions. PR [#8](https://github.com/fastapi-mvc/copier-project/pull/8)
  * Bump cachix/cachix-action from 10 to 12.
  * Bump cachix/install-nix-action from 17 to 18.
  * Bump crazy-max/ghaction-github-pages from 3.0.0 to 3.1.0.

## 0.1.1 (17.10.2022)

### Fixed

* Fix relative symlink to `CHANGELOG.md` in docs [fastapi-mvc/fastapi-mvc#189](https://github.com/fastapi-mvc/fastapi-mvc/issues/189). PR [#3](https://github.com/fastapi-mvc/copier-project/pull/3)

## 0.1.0 (09.10.2022)

* Initial release - [fastapi-mvc/fastapi-mvc#174](https://github.com/fastapi-mvc/fastapi-mvc/issues/174)
