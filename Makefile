setup:
	# Create python virtualenv & source it
	python3 -m venv ~/.graphs
	# source ~/.graphs/bin/activate

delete:
	#delete venv
	rm -rf ~/.graphs

install_hadolint:
	cd hadolint
	stack install

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# This is linter for Dockerfiles
	hadolint Dockerfile

all: setup install_hadolint lint