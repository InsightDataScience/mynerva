# mynerva
logging Jupyter notebook actions

### Example Setup

**1) Create symbolic links in jupyter's nbextensions directory to mynerva's nbextensions**

`ln -s ~/[path to repo]/mynerva/nbextensions/markcell.js ~/.ipython/nbextensions/markcell.js`

`ln -s ~/[path to repo]/mynerva/nbextensions/print-cell.js ~/.ipython/nbextensions/print-cell.js`

**2) Start the notebook server with run_ipython.sh**

This will start the server in mynerva's notebooks directory, load mynerva's server extention, and pipe the notebook actions to a log file.

**3) Create a notebook**

**4) Activate the client-side notebook extension**

Run the following in the browser terminal to enable the client-side extension:

	IPython.notebook.config.update({
	   "load_extensions": {"print-cell":true}
	})

User actions in the notebook will now be logged in a text file in the logs directory.
