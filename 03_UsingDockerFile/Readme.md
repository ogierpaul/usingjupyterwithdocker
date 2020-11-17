# Step 3: Using docker compose & Docker File
## Objective
### Deliverables
- Use a docker file in docker-compose to customize the base image from Jupyter by adding new modules
- Either through a requirements.txt file or directly in the Dockerfile

### What has changed since Step2?
- Now, you can effectively replicate your Jupyter environment in a docker version
- Good-bye, dependencies problem!


## How To run
### cd to this directory

````
cd usingjupyterwithdocker/Step3_UsingDockerFile
````

### Parametrize the variables:
- In docker-compose.yml, input the absolute path to the Jupyter_Home_Folder on the host (local machine)
- In .env, input the token needed to access Jupyter (Optional)
- In Dockerfiles/Dockerfile and requirements.txt, adjust the packages to be installed

### Launch docker compose
### At this stage, you might need to frequently re-build a docker images
- Docker containers are designed to be ephemeral.
- To update an existing container, you remove the old one and start a new one.
- To update an existing image without removing it with new changes, use the following commands

````
docker-compose up --force-recreate --build -d
docker image prune -f
````

### Go to localhost:8888
- You should see the jupyter notebook interface
- as token, input the token defined in .env file

### Verify that the packages have been installed
- Try importing packages defined in requirements.txt

### Congratulations!

## Tip
### How to modify a docker file or docker compose
- [How to update existing images with docker-compose?](https://stackoverflow.com/questions/49316462/how-to-update-existing-images-with-docker-compose)
- [How to rebuild docker container in docker-compose.yml?](https://stackoverflow.com/questions/36884991/how-to-rebuild-docker-container-in-docker-compose-yml)
