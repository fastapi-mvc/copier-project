#!/usr/bin/env bash

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
  -d license=mit \
  -d repo_url=https://github.com/fastapi-mvc/example \
  -d version=0.1.0 \
  -d fastapi_mvc_version="Generated from CI" \
  copy . ./example
