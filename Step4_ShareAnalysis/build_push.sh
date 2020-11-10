# Login to docker
docker login --username=yourhubusername --email=youremail@company.com
# Build docker image from the docker file
docker build -t ogierpaul/step4analysis .
# Push docker image to docker hub
docker push ogierpaul/step4analysis
