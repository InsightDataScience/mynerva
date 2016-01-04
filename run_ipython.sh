#!/bin/bash

python -m IPython notebook --notebook-dir=./notebooks --NotebookApp.server_extensions="['extensions.server_ext_full']" &> logs/log_$(date +%s).txt
