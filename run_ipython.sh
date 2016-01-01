#!/bin/bash

python -m IPython notebook --notebook-dir=~/insight --NotebookApp.server_extensions="['server_ext_full']" &> log_$(date +%s).txt
