# Copier Project

[![CI](https://github.com/fastapi-mvc/copier-project/actions/workflows/main.yml/badge.svg)](https://github.com/fastapi-mvc/copier-project/actions/workflows/main.yml)

---

**Example generated project**: [fastapi-mvc/example](https://github.com/fastapi-mvc/example)

---

Copier template for scaffolding new [fastapi-mvc](https://github.com/fastapi-mvc/fastapi-mvc) project.

## Template features

* Generated project based on MVC architectural pattern
* WSGI + ASGI production server
* Generated project comes with Sphinx documentation and 100% unit tests coverage
* Kubernetes deployment with Redis HA cluster
* Makefile, GitHub actions and utilities
* Helm chart for Kubernetes deployment
* Dockerfile with K8s and cloud in mind
* Uses Poetry dependency management
* Includes set of Nix expressions
* Virtualized reproducible development environment using Vagrant

## Quickstart

To use this template outside `fastapi-mvc`:

Prerequisites:

* Python 3.8 or later [How to install python](https://docs.python-guide.org/starting/installation)
* Git 2.27 or newer
* copier 6.2.0 or later

```shell
copier copy "https://github.com/fastapi-mvc/copier-projecty.git" /path/to/your/new/project
# Or even shorter
copier copy "gh:fastapi-mvc/copier-projecty" /path/to/your/new/project
```

## Using Nix

```shell
nix-shell shell.nix
copier copy "gh:fastapi-mvc/copier-projecty" /path/to/your/new/project
```

## License

[MIT](https://github.com/fastapi-mvc/fastapi-mvc/blob/master/LICENSE)
