FROM ubuntu:14.04

MAINTAINER Wilfred Hughes <me@wilfred.me.uk>
# Updates the apt cache to when this image is first built.
RUN apt-get -qq update

# Grab our dependencies.
RUN apt-get -qqy install git nodejs nodejs-legacy npm

# Grab the code.
RUN mkdir -p /opt
RUN git clone https://github.com/Wilfred/HandyBot2.git /opt/handybot

# Install the code.
RUN cd /opt/handybot; npm install .

