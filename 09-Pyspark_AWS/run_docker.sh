# Pull the image, My image ID was b32965fc9e70)
docker pull jupyter/pyspark-notebook
# Run with passing your local variables
docker run -d \
  --name sparktest \
  -p 8888:8888 \
  --user root \
  -e JUPYTER_TOKEN=letmein\
  -e GRANT_SUDO=yes \
  -v /Users/paulogier/87-docker_parent/usingjupyterwithdocker/09-Pyspark_AWS/notebooks:/home/jovyan/notebooks \
  -v /Users/paulogier/.aws/myconfig.cfg:/home/jovyan/.aws/myconfig.cfg:ro \
  jupyter/pyspark-notebook
