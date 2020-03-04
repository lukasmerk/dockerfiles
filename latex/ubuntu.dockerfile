FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -yd biber latexmk make texlive-full python3-pygments
ARG DEBIAN_FRONTEND=noninteractive
ARG TZ=Europe/Berlin
RUN apt-get install -y biber latexmk make texlive-full python3-pygments
RUN apt autoremove && apt autoclean && rm -rf /var/lib/apt/lists/*


# RUN tlmgr update --self && tlmgr update --all
# RUN tlmgr install keyval kvoptions fancyvrb fvextra upquote float ifthen calc ifplatform pdftexcmds etoolbox xstring xcolor lineno framed shellesc
