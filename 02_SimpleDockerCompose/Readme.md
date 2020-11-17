# Step 2: Using docker compose to run a minimal jupyter image
## Objective
### Deliverables
- Run an official image published by the Jupyter Foundation
- Expose the Jupyter Notebook interface locally on the host
- Set-up a shared (synced) volume between the host and the container to share files

### What has changed since Step1? Advantages of using docker-compose
- You can set environment variables and volume shared in the YML file
  - Easier (IMHO) to read than a command line instruction
- In the nexts lessons, you will be able in a single file to launch jupyter, postgres, and other containers from a single file


## How To run
### cd to this directory

````
cd usingjupyterwithdocker/Step1_SimpleDockerCompose
````

### Parametrize the variables:
- In docker-compose.yml, input the absolute path to the Jupyter_Home_Folder on the host (local machine)
- In .env, input the token needed to access Jupyter (Optional)

### Launch docker compose
````
docker-compose up
````

### Go to localhost:8888
- You should see the jupyter notebook interface
- as token, input the token defined in .env file

### Verify that the home directory for jupyter syncs correctly
- Create a file from the host
- view it with Jupyter from the container
- edit it and save
- View the modifications in the host

### Congratulations!
