# Step 1: Using docker run to run a jupyter notebook image
## Objective
### Deliverables
- Run an official image published by the Jupyter Foundation
- Expose the Jupyter Notebook interface locally on the host
- Set-up a shared (synced) volume between the host and the container to share files

## How To run
### cd to this directory

````
cd usingjupyterwithdocker/Step1_LaunchingImageFromCommandLine
````

### Parametrize the variables in the bash file:
- [Official Documentation](https://docs.docker.com/engine/reference/commandline/run/)
- In run_jupyter_minimal.sh file, edit the arguments:

#### Port mapping to access Jupyter:
````
-p 8888:8888
````

- the -p options map the host port to the container port (in this case, both 8888)

#### Set up an environment variable
````
- e JUPYTER_TOKEN=<YOUR_TOKEN>
````

- The jupyter token will be prompter to access Jupyter Notebook

#### Sharing data between the container and the host
- [See there](https://thenewstack.io/docker-basics-how-to-share-data-between-a-docker-container-and-host/)
- This will allow to edit data in the host instead of the container, and see the results in the container, and vice-versa
- The path must be absolute

````
- p <absolute_path_on_host>:/home/jovyan
````

### Launch the docker start script
````
 bash run_jupyter_minimal.sh
````

OR

````
docker run -p 8888:8888 -e JUPYTER_TOKEN=letmein -v /Users/paulogier/87-docker_parent/usingjupyterwithdocker/Step1_LaunchingImageFromCommandLine/Jupyter_Home_Folder:/home/jovyan jupyter/minimal-notebook
````

### Verify that the home directory for jupyter syncs correctly
- Create a file from the host
- view it with Jupyter from the container
- edit it and save
- View the modifications in the host

### Congratulations!
