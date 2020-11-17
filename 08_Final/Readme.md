# Step7: Sharing Volumes
## Objective:
- Create one volume (directory) accessible in read and write by all containers
- (TODO) Read data from the host in a mounted volume with python, push it to postgres for fast COPY

## Architecture
![Step7 Volumes Architecture](https://github.com/ogierpaul/usingjupyterwithdocker/blob/master/images/step7_architecture.png)

## Configuration
- We will use only docker command


### References
- [Mounting Volumes](https://stackoverflow.com/questions/43559619/docker-compose-how-to-mount-path-from-one-to-another-container)
- [Transfering data between containers](https://medium.com/@gchudnov/copying-data-between-docker-containers-26890935da3f.)
- [Creating a data volume](https://www.digitalocean.com/community/tutorials/how-to-share-data-between-docker-containers)
- [Understanding Docker Volumes](https://www.ionos.com/community/server-cloud-infrastructure/docker/understanding-and-managing-docker-container-volumes/)
- [Docker-Volumes](https://phoenixnap.com/kb/docker-volumes)
- [FileSystem and Permissions](https://medium.com/@nielssj/docker-volumes-and-file-system-permissions-772c1aee23ca)
