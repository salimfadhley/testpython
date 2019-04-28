# Base Image, Python Interpreter
FROM python:3.7.3-stretch AS testpython
RUN python -m pip install --upgrade pip setuptools black pytest mypy
RUN apt-get install git

