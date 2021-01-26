install-dev:  # install dev dependencies
	pipenv install --dev

install:  # install dependencies
	pipenv install

flake8:  # lint python
	flake8 .

isort:  # sort python imports
	isort .

black:  # format python code
	black .
