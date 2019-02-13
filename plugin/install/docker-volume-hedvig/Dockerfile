#FROM ubuntu:16.04
#LABEL Description="This image is used to start the Hedvig Volume Plugin" Version="2.0"
#RUN apt-get -qq update
#RUN apt-get -qq -y install xfsprogs xfsdump
#RUN apt-get -qq -y install open-iscsi

FROM centos:7
LABEL Description="This image is used to start the Hedvig Volume Plugin" Version="2.0"
RUN yum -y install xfsprogs xfsdump
RUN yum -y install iscsi-initiator-utils
RUN yum -y install yum-plugin-remove-with-leaves
