# Note: You can use any Debian/Ubuntu based image you want. 
FROM ubuntu:24.04

RUN apt update && apt upgrade -y
RUN apt install -y curl git unzip xz-utils zip libglu1-mesa

RUN apt install -y wget gpg
RUN wget https://dl-ssl.google.com/linux/linux_signing_key.pub -O /tmp/google.pub
RUN gpg --no-default-keyring --keyring /etc/apt/keyrings/google-chrome.gpg --import /tmp/google.pub
RUN echo 'deb [arch=amd64 signed-by=/etc/apt/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main' | tee /etc/apt/sources.list.d/google-chrome.list
RUN apt update
RUN apt install -y google-chrome-stable

RUN useradd -ms /bin/bash dev
USER dev
WORKDIR /home/dev
ARG HOME=/home/dev
# Get Flutter
RUN wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.22.1-stable.tar.xz -O /tmp/flutter.tar.xz
RUN tar -xf /tmp/flutter.tar.xz -C $HOME
# RUN echo 'PATH="$HOME/flutter/bin:$PATH"'  >> $HOME/.bashrc
ENV PATH="$HOME/flutter/bin:$PATH"
# RUN /bin/bash -c dart pub global activate rps 
# RUN echo 'PATH="$PATH:$HOME/.pub-cache/bin"' >> $HOME/.bashrc
ENV PATH="$PATH:$HOME/.pub-cache/bin"


USER root
# RUN tar -xf /tmp/flutter.tar.xz -C /usr/bin
# RUN git config --global --add safe.directory /usr/bin/flutter
# # RUN echo 'PATH="/usr/bin/flutter/bin:$PATH"'  >> /usr/bin/.bashrc
# ENV PATH="/usr/bin/flutter/bin:$PATH"
# RUN dart pub global activate rps 
# # RUN echo 'PATH=$PATH:/usr/bin/.pub-cache/bin"' >> /usr/bin/.bashrc
# ENV PATH="$PATH":"/root/.pub-cache/bin"

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>