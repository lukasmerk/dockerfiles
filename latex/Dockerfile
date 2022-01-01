FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
ARG TZ=Europe/Berlin

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y biber latexmk make texlive-full \
    && apt-get install -y python-pygments \
    && apt-get install -y fonts-roboto \
    && apt-get install -y curl \
    && curl https://fonts.google.com/download?family=Raleway > raleway.zip \
    && curl https://fonts.google.com/download?family=Ubuntu > ubuntu.zip \
    && curl https://fonts.google.com/download?family=Ubuntu%20Mono > ubuntumono.zip \
    && unzip -j raleway.zip static/*.ttf -d /usr/local/share/fonts/ \
    && unzip ubuntu.zip *.ttf -d /usr/local/share/fonts/ \
    && unzip ubuntumono.zip  *.ttf -d /usr/local/share/fonts/ \
    && fc-cache \
    && apt-get remove -y curl \
    && apt autoremove -y && apt autoclean && rm -rf /var/lib/apt/lists/*

# https://fonts.google.com/download?family=Ubuntu%20Mono
# https://fonts.google.com/download?family=Ubuntu
# https://fonts.google.com/download?family=Raleway
# RUN tlmgr update --self && tlmgr update --all
# RUN tlmgr install keyval kvoptions fancyvrb fvextra upquote float ifthen calc ifplatform pdftexcmds etoolbox xstring xcolor lineno framed shellesc
