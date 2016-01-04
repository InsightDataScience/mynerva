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
RUN apt-get install -y vim

RUN pip install "ipython[notebook]"

COPY ipython/extensions/server_ext_full.py /root/.ipython/extensions/server_ext_full.py
COPY ipython/nbextensions/markcell.js /root/.ipython/nbextensions/markcell.js
COPY ipython/nbextensions/print-cell.js /root/.ipython/nbextensions/print-cell.js
COPY jupyter/nbconfig/notebook.json /root/.jupyter/nbconfig/notebook.json
COPY run_ipython.sh /root/run_ipython.sh

EXPOSE 8888

CMD ["/root/run_ipython.sh"]
