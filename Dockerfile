FROM ubuntu:14.04

MAINTAINER Wilfred Hughes <me@wilfred.me.uk>
RUN apt-get -qq update
RUN apt-get -qqy install redis-server
