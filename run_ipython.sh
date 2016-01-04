#!/bin/bash

cd $HOME/.ipython/extensions
python -m IPython notebook --notebook-dir=$HOME --NotebookApp.server_extensions="['server_ext_full']" --port=8888 --ip="*"
cd $HOME/
