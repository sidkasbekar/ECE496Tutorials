setup:
	python3 -m venv ~/.myrepo

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	python -m pytest --nbval ECE_496_NLP_Tutorial.ipynb


lint:
	pylint --disable=R,C myrepolib cli web

all: install lint test
