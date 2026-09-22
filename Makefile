install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt


test:
	python -m pytest --nbval Untitled9.ipynb


format:
	black *.ipynb

lint:
	jupyter nbconvert --to python Untitled9.ipynb --output-dir /tmp/pylint >/dev/null 2>&1 && \
		python -m pylint --disable=R,C,W0104,W0311,W0404,E0401 /tmp/pylint/Untitled9.py

all: install lint test format