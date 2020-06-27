setup:
	python3 -m venv ~/.dockerproj

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
    #python -m pytest -vv --cov=myrepolib tests/*.py
    #python -m pytest --nbval notebook.ipynb

lint:
	hadolint Dockerfile
	pylint --disable=R,CW1203 app.py

all: install lint test

# wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.17.5/hadolint-Linux-x86_64 &&\