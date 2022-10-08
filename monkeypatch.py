"""https://github.com/fastapi-mvc/cookiecutter/issues/17"""
import os
import re
import sys
import argparse


trigger_patch = """\
on:
  # This trigger is required by fastapi-mvc automation to dispatch this concrete workflow
  # from fastapi-mvc 'CI workflow' (https://github.com/fastapi-mvc/cookiecutter/actions/workflows/main.yml),
  # and await its result. NOTE! This is not included in the template.
  workflow_dispatch:
    inputs:
      distinct_id:
        required: true
        description: "Input required by codex-/return-dispatch@v1"\
"""
echo_patch = """\
jobs:
  meta:
    runs-on: ubuntu-latest

    steps:
      # This echo is required by codex-/return-dispatch@v1 in order to identify dispatched workflow.
      # NOTE! This is not included in the template.
      - name: echo distinct ID ${{ github.event.inputs.distinct_id }}
        run: echo ${{ github.event.inputs.distinct_id }}\
"""


def apply_patch(file):
    if not os.path.exists(file):
        print(f"Path: '{file}' does not exist.")
        sys.exit(1)
    elif not os.path.isfile(file):
        print(f"Path: '{file}' is not a file.")
        sys.exit(1)

    with open(file, "r+") as f:
        content = f.read()
        patched = content.replace("on:", trigger_patch, 1)
        patched = patched.replace("jobs:", echo_patch, 1)
        f.seek(0)
        f.write(patched)
        f.truncate()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "files",
        metavar="FILE",
        type=str,
        nargs="+",
        help="File to apply monkeypatch",
    )
    args = parser.parse_args()

    for file in args.files:
        print(f"Patching: '{file}'")
        apply_patch(file)


if __name__ == "__main__":
    main()
