#! /bin/bash

.venv/bin/python3 -m flake8 .
.venv/bin/python3 -m black .
.venv/bin/python3 -m pytest -vv -x -s tests/