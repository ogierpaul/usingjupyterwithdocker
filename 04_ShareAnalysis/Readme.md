# Step 4: Publishing your analysis
## Objective
### Deliverables
- A stand-alone docker image *with data* (flat files, notebooks...) *included*
- Learn how to push this docker image to the docker hub
- Learn how to pull this image from docker hub to reproduce your analysis

### What has changed since Step4?
- We are using only a Dockerfile for simplification, no docker-compose
- We are NOT sharing folder between the host and the containers
- We are publishing the image to Docker Hub


## How To run
### cd to this directory

````
cd usingjupyterwithdocker/Step4_ShareAnalysis
````

### Parametrize the variables:
- Adjust the requirements.txt, adjust the packages to be installed
- In the local /data folder, copy the notebook and analysis you want to share.


### Build-Push-Pull
#### Login to Docker Hub
````
docker login --username=yourhubusername --email=youremail@company.com
````

#### Build the image
````
docker build -t ogierpaul/step4analysis .
````

#### Push docker image to docker hub
````
docker push ogierpaul/step4analysis
````

#### To test replicability: Pull the docker image from docker hub
````
docker pull ogierpaul/step4analysis
````

#### Run the analysis to display
````
docker run -p 8888:8888 -e JUPYTER_TOKEN='letmein' ogierpaul/step4analysis
````

### Go to localhost:8888
- You should see the jupyter notebook and the data you have saved in the /data folder

### Congratulations!

## Tip
### How to modify a docker file
- [Build and Run from Dockerfile](https://docs.docker.com/get-started/part2/)
## Using Docker Hub
- [Pushing and Pulling from Docker Hub](https://ropenscilabs.github.io/r-docker-tutorial/04-Dockerhub.html)
