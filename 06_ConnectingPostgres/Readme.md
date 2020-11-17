# Step 6: Jupyter and Postgres
## Objective
### Deliverables
- Two containers, 1 for Jupyter, 1 for PostgreSQL
- Connection between the two

### What has changed since Step5?
- We are using docker-compose to run two containers for jupyter (incl. psycopg2) and postgres
- Using the Jupyter, you will connect to postgres


## How To run
### cd to this directory

````
cd usingjupyterwithdocker/Step6_ConnectingPostgres
````

### Parametrize the variables:
- In docker-compose.yml, input the absolute path to the Jupyter_Home_Folder on the host (local machine)
- In .env, input the token needed to access Jupyter and the Postgres password (Optional)
- In Dockerfiles/Dockerfile-jupyter adjust the packages to be installed

### Launch docker compose
````
docker-compose up --force-recreate --build -d
````

### Go to localhost:8888
- You should see the jupyter notebook interface
- as token, input the token defined in .env file

### Run the Notebook to verify connection with Posgres
- Connect
- Check conn.status (Should return 1)
- Read some mockaroo data and write them to Postgres with pandas
- Read from Postgres with Pandas

### Congratulations!

## References
- [Getting Started with Compose PostgreSQL and Jupyter Notebooks](https://www.compose.com/articles/getting-started-with-compose-postgresql-and-jupyter-notebooks/)
- [Docker Compose for Data Science](https://www.andrewmahon.info/blog/docker-compose-data-science)
