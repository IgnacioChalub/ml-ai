VENV := .venv
PY := $(VENV)/bin/python
QUARTO := $(VENV)/bin/quarto

export QUARTO_PYTHON := $(shell pwd)/$(VENV)/bin/python

.PHONY: render preview clean install

render:
	$(QUARTO) render

preview:
	$(QUARTO) preview

clean:
	rm -rf _site _freeze .quarto

install:
	$(PY) -m pip install --upgrade pip
	$(PY) -m pip install quarto-cli jupyter numpy pandas matplotlib scikit-learn plotly pyyaml nbformat
