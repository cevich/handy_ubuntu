FROM docker.io/ubuntu:latest
MAINTAINER cevich@redhat.com
ADD /Dockerfile /root/Dockerfile
ENV container="docker" \
    PRE_INSTALLED_DEBS="realpath python3 python3-venv python-virtualenv docker.io gcc openssl libxslt-dev libffi-dev python-dev python3-dev libxml2-dev libselinux1 rsync python3-pycurl python-simplejson libssl-dev zlib1g-dev yum-utils"
RUN apt-get update -qq && \
    apt-get install -qq $PRE_INSTALLED_DEBS && \
    apt-get clean
