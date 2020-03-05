FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
ARG TZ=Europe/Berlin

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y biber latexmk make texlive-full
RUN apt-get update && apt-get install -y python-pygments
RUN apt autoremove && apt autoclean && rm -rf /var/lib/apt/lists/*


# RUN tlmgr update --self && tlmgr update --all
# RUN tlmgr install keyval kvoptions fancyvrb fvextra upquote float ifthen calc ifplatform pdftexcmds etoolbox xstring xcolor lineno framed shellesc
