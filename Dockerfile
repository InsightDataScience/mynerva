############################################################
# Dockerfile to build Jupyter notebook container image
# Based on Debian
############################################################
FROM ubuntu:14.04

MAINTAINER Austin Ouyang

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python
RUN apt-get install -y python-dev
RUN apt-get install -y python-pip

RUN pip install "ipython[notebook]"

COPY extensions/server/ext_full_.py 

EXPOSE 8888

CMD ipython notebook --no-browser --port=8888 --ip="*"
