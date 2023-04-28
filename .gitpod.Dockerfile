FROM gitpod/workspace-python:latest

USER gitpod

COPY requirements.txt /tmp
RUN cd /tmp && pip install -r requirements.txt
