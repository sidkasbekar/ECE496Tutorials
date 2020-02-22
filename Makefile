setup:
	python3 -m venv ~/.myrepo

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	python tests/test.py


lint:
	pylint --disable=R,C web

all: install lint test
