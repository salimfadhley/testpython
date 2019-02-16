# Base Image, Python Interpreter
FROM python:3.7.2-stretch AS testpython
COPY install /tmp/install
RUN python -m pip install --upgrade -r /tmp/install/requirements.txt
RUN apt-get install git
RUN rm -rf /tmp/install


