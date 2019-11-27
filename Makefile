PY := 3

venv:
	python$(PY) -m venv $@

.PHONY: init-dev init clean
init-dev:
	python$(PY) -m pip install -U -r requirements-dev.txt
	python$(PY) -m pip install -U --editable .

init:
	python$(PY) -m pip install -U -r requirements.txt

clean:
	rm -rf *.egg-info
	find ./ -name __pycache__ -type d -print | xargs rm -rf
	find ./ -name '*.pyc' -type f -delete

# packaging
.PHONY: archive pypi-test-upload pypi-upload
archive:
	python$(PY) setup.py sdist bdist_wheel

pypi-test-upload:
	twine upload --repository testpypi dist/*

pypi-upload:
	twine upload --repository pypi dist/*
