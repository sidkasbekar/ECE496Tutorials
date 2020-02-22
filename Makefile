setup:
	python3 -m venv ~/.myrepo

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python tests/test.py


lint:
	pylint --disable=R,C code

all: install lint test
