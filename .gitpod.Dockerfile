FROM gitpod/workspace-python:latest

COPY requirements.txt /tmp

RUN cd /tmp && pip install -r requirements.txt