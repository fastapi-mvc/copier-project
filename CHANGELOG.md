# Changelog

This file documents changes to [fastapi-mvc/copier-project](https://github.com/fastapi-mvc/copier-project). The release numbering uses [semantic versioning](http://semver.org).

## Unreleased

### Internal

* Update project dependencies. PR [#12](https://github.com/fastapi-mvc/copier-project/pull/12)
  * fastapi (0.80.0 -> 0.89.1)
  * pytest (7.2.0 -> 7.2.1)
  * black (22.8.0 -> 23.1.0)
  * requests (2.28.1 -> 2.28.2)
  * httpx (0.23.1 -> 0.23.3)
* Update project GitHub Actions. PR [#12](https://github.com/fastapi-mvc/copier-project/pull/12)
  * fkirc/skip-duplicate-actions (5.2.0 -> 5.3.0)

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
  * pytest (7.1.3 -> 7.2.0)
  * pytest-asyncio (0.19.0 -> 0.20.3)
  * Sphinx (5.2.3 -> 5.3.0)
  * uvicorn (0.18.3 -> 0.20.0)
  * fastapi (0.85.1 -> 0.88.0)
* Add development dependency - httpx. PR [#8](https://github.com/fastapi-mvc/copier-project/pull/8)
* Update project GitHub Actions. PR [#8](https://github.com/fastapi-mvc/copier-project/pull/8)
  * cachix/cachix-action (10 -> 12)
  * cachix/install-nix-action (17 -> 18)
  * crazy-max/ghaction-github-pages (3.0.0 -> 3.1.0)

## 0.1.1 (17.10.2022)

### Fixed

* Fix relative symlink to `CHANGELOG.md` in docs [fastapi-mvc/fastapi-mvc#189](https://github.com/fastapi-mvc/fastapi-mvc/issues/189). PR [#3](https://github.com/fastapi-mvc/copier-project/pull/3)

## 0.1.0 (09.10.2022)

* Initial release - [fastapi-mvc/fastapi-mvc#174](https://github.com/fastapi-mvc/fastapi-mvc/issues/174)
