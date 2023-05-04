FROM gitpod/workspace-python:latest

ENV DBT_PROFILES_DIR=./profiles/

COPY requirements.txt /tmp

RUN cd /tmp && pip install -r requirements.txt