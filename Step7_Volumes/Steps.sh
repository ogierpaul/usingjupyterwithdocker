# Creating a volume with docker create -- volume
docker volume create --name stavol:rw
# Start a ubuntu container
docker run -d --name ubex -v stavol:/home/stavol ubuntu tail -f /dev/null
# Set data volume to rw
docker exec -d ubex chmod chmod u=rwx,g=rwx,o=rwx /stavol
# Start a jupyter minimal notebook container and map the volume (stagingarea) to a container directory (/data/stagingarea)
docker run -d -v stavol:/home/jovyan/stavol -p 8888:8888 -e JUPYTER_TOKEN=letmein jupyter/minimal-notebook

docker run -d -v stavol:/home/jovyan/stavol -p 8888:8888 -e JUPYTER_TOKEN=letmein -e GRANT_SUDO=yes --user root jupyter/minimal-notebook
