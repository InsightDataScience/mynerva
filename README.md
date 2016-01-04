# mynerva
logging Jupyter notebook actions

# Installing Docker on Mac
1. Use [this link](https://github.com/docker/toolbox/releases/download/v1.9.1f/DockerToolbox-1.9.1f.pkg) to install the **Docker Toolbox**
3. Search for `Docker Quickstart Terminal` in Spotlight (control+spacebar or command+spacebar) and run
  * This should open up a new terminal and start the Docker Host Linux VM
  * We will use this terminal to start and stop all Docker containers
4. Once the VM has finished initializing, find your Docker Host IP address 
  * ![docker-initialize](images/docker-initialize.png)
5. Open another terminal and edit the `/etc/hosts` file on your local machine
  * Add the Docker Host IP to the file and give it a name `docker-local` this way we won't have to reference it by the IP address anymore
  * ```$ sudo vim /etc/hosts```
  * ![etc-hosts](images/etc-hosts.png)

# Start the Mynerva Docker Container
1. Switch back to the terminal containing the Linux VM and Run the container
  * The first time may take a while, since it will be downloading the Docker image from the remote Docker Hub to your local machine
  * ```$ docker run -d -p 8888:8888 --name mynerva aouyang1/mynerva```
  * ![docker-run](images/docker-run.png)
2. Go to [http://docker-local:8888](http://docker-local:8888) once the container is running
3. Any cells executed in any notebook will show up in the console
  * ![notebook-example](images/notebook-example.png)
  * ```$ docker logs mynerva```
  * ![log-output](images/log-output.png)
