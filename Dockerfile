# Base Image, Python Interpreter
FROM python:3.7.4-stretch AS testpython
RUN apt-get update
RUN mkdir /tmp
COPY requirements.txt /tmp/
RUN python -m pip install --upgrade -r /tmp/requirements.txt
RUN apt-get install git
RUN rm -rf /tmp/install
