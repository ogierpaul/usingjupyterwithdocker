# usingjupyterwithdocker
- Short step by step tutorial to use docker for your data science projects
- From a beginner point of view

![Docker-Logo](https://github.com/ogierpaul/usingjupyterwithdocker/blob/master/images/docker_logo.png)
![Jupyter-Logo](https://github.com/ogierpaul/usingjupyterwithdocker/blob/master/images/jupyter_logo.png)

## Deliverables
- Run Jupyter in a docker container
- Install additional libraries
- Share data between the host and the container
- Run additional services

## Project Structure
- Incremental approach
- Each step is one folder (Step1, ...) corresponding to one resulting docker image
  - Step1: Run jupyter with docker from the command line
  - Step2: Param environment variables with docker-compose
  - Step3: Use a docker file to install additional python packages in the container
  - Step4: Share your data, analysis directly in docker
  - Step5: Use Jupyter with a database like PostgreSQL (Not done yet)


## How to run
### Pre-requisite: Docker Desktop
- Make sure Docker Desktop is installed [See here](https://docs.docker.com/docker-for-mac/install/)
### Cloning the project from Git
- cd to your working directory on your local machine
- Example: Create a directory "Docker_Jupyter_Tutorial" in your home Jupyter_Home_Folder
- type the command to clone the git repository

````
git clone https://github.com/ogierpaul/usingjupyterwithdocker.git
````

## Useful references:
- Check out first this excellent [Docker Tutorial](https://docker-curriculum.com/#introduction)
- [How to Put Jupyter Notebooks in a Dockerfile](https://u.group/thinking/how-to-put-jupyter-notebooks-in-a-dockerfile/)
- [Nice Gist example](https://gist.github.com/psychemedia/8fa117e34c62b7f80b6c595b8ba4f488)
- [Sync Volumes](https://thenewstack.io/docker-basics-how-to-share-data-between-a-docker-container-and-host/)
