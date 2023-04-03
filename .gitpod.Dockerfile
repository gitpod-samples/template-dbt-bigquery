FROM gitpod/workspace-full:latest

USER root

RUN apt-get update && \
    apt-get install -y wget git tree ssh nano sudo nmap man tmux curl joe && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install -r requirements.txt

USER gitpod

ENV DBT_PROFILES_DIR=/workspace/profiles
