# mynerva
logging Jupyter notebook actions

# Installing Docker on Mac
1. Use [this link](https://github.com/docker/toolbox/releases/download/v1.9.1f/DockerToolbox-1.9.1f.pkg) to install the **Docker Toolbox**
3. Search for `Docker Quickstart Terminal` in Spotlight (control+spacebar or command+spacebar) and run
  * This should open up a new terminal to start the Linux VM
  * We will use this terminal to start and stop all Docker containers
4. Find your Docker host IP address once the VM has finished initializing
5. Open another terminal and open the `/etc/hosts` file on your local machine
  * ```$ sudo vim /etc/hosts```
5. Pull and run the container
  * The first time may take some time, since it will be pulling the repository from the remote Docker Hub
  * ```$ docker run -d -p 8888:8888 --name test_jupyter aouyang1/jupyter_nb_tracking```
6. Go to [http://docker-host:8888](http://docker-host:8888) once the container is running
