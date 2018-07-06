FROM debian:latest

ADD https://product-dist.ballerina.io/downloads/0.975.1/ballerina-platform-linux-installer-x64-0.975.1.deb /

RUN apt-get update && \
	apt-get install -fy && \
	apt-get clean

RUN dpkg -i /ballerina-platform-linux-installer-x64-0.975.1.deb