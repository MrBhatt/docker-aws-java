############################################################
# Dockerfile to build image with common editors and AWS java 
# sdk
# Based on Java image
############################################################

FROM java:latest
MAINTAINER Anupam Bhatt

################## BEGIN INSTALLATION ######################
RUN apt-get update && apt-get install -y vim \ 
    && apt-get install -y nano \
    && apt-get install -y wget
RUN mkdir ~/workdir
WORKDIR ~/workdir
RUN wget https://sdk-for-java.amazonwebservices.com/latest/aws-java-sdk.zip
RUN unzip aws-java-sdk.zip && rm aws-java-sdk.zip
