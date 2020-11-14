# Creating a network for containers to speak with one another
docker network create my-net

# Creating a volume with docker create -- volume
docker volume create --name stagingarea

# Start a jupyter minimal notebook container and map the volume (stagingarea) to a container directory (/data/stagingarea)
docker run -d \
  --network my-net \
  -v stagingarea:/home/jovyan/stagingarea\
  -v /Users/paulogier/87-docker_parent/usingjupyterwithdocker/Step7_Volumes/Jupyter_work:/home/jovyan/work \
  -p 8888:8888 \
  -e JUPYTER_TOKEN=letmein \
  -e GRANT_SUDO=yes \
  -e CHOWN_HOME=yes \
  -e CHOWN_HOME_OPTS='-R' \
  --user root \
  jupyter/minimal-notebook

# Run PostgreSQL
docker run -d \
  --network my-net \
  -v stagingarea:/home/stagingarea \
  -p 5432:5432 \
  -e POSTGRES_PASSWORD=Passw0rd \
  -e POSTGRES_USER=myuser\
  -e POSTGRES_DB=mydb \
  postgres

# # Start a ubuntu container
# docker run -d\
#   --name ubex \
#   -v stagingarea:/home/stagingarea \
#   ubuntu tail -f /dev/null
# # Set data volume to rw
# # docker exec -d ubex chmod chmod u=rwx,g=rwx,o=rwx /stavol
