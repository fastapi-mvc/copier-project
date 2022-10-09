#! /usr/bin/env nix-shell
#! nix-shell shell.nix -i bash

if [ -n "$DEBUG" ]; then
	set -x
fi

set -o errexit
set -o nounset
set -o pipefail

copier -d project_name=example \
  -d container_image_name=example \
  -d chart_name=example \
  -d script_name=example \
  -d project_description="This project was generated with fastapi-mvc." \
  -d author="Radosław Szamszur" \
  -d email=github@rsd.sh \
  -d copyright_date=2022 \
  -d nix=true \
  -d redis=true \
  -d aiohttp=true \
  -d github_actions=true \
  -d helm=true \
  -d license=MIT \
  -d repo_url=https://github.com/fastapi-mvc/example \
  -d version=0.1.0 \
  -d fastapi_mvc_version="Generated from CI" \
  copy . ./example
