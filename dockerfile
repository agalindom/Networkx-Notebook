FROM jupyter/base-notebook:latest
ENV NB_USER=agm
ENV CHOWN_HOME=yes
USER root
WORKDIR /home/${NB_USER}
COPY . /home/${NB_USER}
RUN apt update && \
        apt install -y git && \
        git clone https://github.com/hadolint/hadolint && \
        pip install --no-cache-dir --upgrade -r requirements.txt