# Why Docker?
## Purpose
- Eliminate the pain of managing different software configuration
- Enhance replicability of your work:
  - Share the notebooks
  - Share the data
  - Share the environment
  - Share the configuration
  - Share additional services (PostgreSQL, ElasticSearch, ...)
- Enhance scalability
  - docker images can be quickly uploaded and ran on AWS
- Working with containers increase resiliency of service
  - part of DevOps movement and microservices
- See [here](https://u.group/thinking/how-to-put-jupyter-notebooks-in-a-dockerfile/)

> Containerization can take some of these headaches away—or at least leave them with the developer of the core code rather than the intended audience. Docker containers are an excellent way to package up an analysis. They can include the data you need, any scripts and code, and they’re guaranteed to work on everyone’s machine—no installation required.
> - Brian Austin

## Simple Diagram
- Naive way to look at docker
- but advantageous enough
- Docker offers also great advantages in terms of infrastructure, Kubernetes, clusters... But I am not an expert as to why yet :)
![Docker-Why](https://github.com/ogierpaul/usingjupyterwithdocker/blob/master/images/docker_diagram_why.jpg)

## Docker Concepts
### Dockerfile, image, container
![Docker-Concepts](https://github.com/ogierpaul/usingjupyterwithdocker/blob/master/images/Docker_Concepts.png)
#### Dockerfile:
- Recipe to build the image
- Instructions list
- [From the doc](https://docs.docker.com/engine/reference/builder/#:~:text=A%20Dockerfile%20is%20a%20text,command%2Dline%20instructions%20in%20succession.)

> A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image. Using docker build users can create an automated build that executes several command-line instructions in succession.
> - Docker Hub Reference

#### Image
- Template / Blueprint for a "Virtual Machine"
- Think of images as the "Class" and containers as the "instance" of the Class
- [From the doc](https://docs.docker.com/get-started/overview/)

> An image is a read-only template with instructions for creating a Docker container. Often, an image is based on another image, with some additional customization. For example, you may build an image which is based on the ubuntu image, but installs the Apache web server and your application, as well as the configuration details needed to make your application run.

#### Container
-  Instance of a "Virtual Machine"
- Container is an isolated environment to run a service
- [From the doc](https://docs.docker.com/get-started/overview/)

>A container is a runnable instance of an image. You can create, start, stop, move, or delete a container using the Docker API or CLI. You can connect a container to one or more networks, attach storage to it, or even create a new image based on its current state.

#### Docker-compose
![Docker-Compose](https://github.com/ogierpaul/usingjupyterwithdocker/blob/master/images/Docker-Compose.jpg)
- Docker-Compose is a recipe how to build and run multiple containers
- [From the doc] (https://docs.docker.com/compose/#:~:text=Compose%20is%20a%20tool%20for,the%20services%20from%20your%20configuration.&text=Run%20docker%2Dcompose%20up%20and,and%20runs%20your%20entire%20app.)
> Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application's services. Then, with a single command, you create and start all the services from your configuration. ... Run docker-compose up and Compose starts and runs your entire app.
