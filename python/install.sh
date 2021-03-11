#!/bin/bash

set -e

python3 -m pip install --user --upgrade pipx
python3 -m pip install --user --upgrade pipenv
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$BASEDIR"

while read -r P; do pipx install "$P"; done < requirements.txt
