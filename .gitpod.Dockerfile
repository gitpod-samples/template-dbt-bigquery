FROM gitpod/workspace-python:latest

USER gitpod

RUN pip install dbt-bigquery==1.4.0
