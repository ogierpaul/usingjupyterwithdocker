# Step5: Installing a Jupyter docker image with psycopg2
## Deliverables
- import psycopg2

## Comment
- psycopg2 needs certain debian/ubuntu libs that are not included in the base image of jupyter
- To install them, you need to have sudo / root access
- Well, well, that is why docker is both complicated (time spent debug/ understanding / fixing = > 1 hour)
- And as well important: by making sure that each tiny installation / update / sudo pass is documented in the code (either in docker file, bash, or docker-compose), it makes sure that your work is REPLICABLE

## How to run
````
cd Step5_Psycopg2/
docker build -t ogierpaul/psy2 .
docker run --rm -p 8888:8888 -e JUPYTER_TOKEN=letmein ogierpaul/psy2
````

## Result
- Log in to the jupyter GUI, create a notebook, verify that you can import psycopg2

## Issues encounted:
- [Cannot install psycopg2: missing pg_config](https://stackoverflow.com/questions/46711990/error-pg-config-executable-not-found-when-installing-psycopg2-on-alpine-in-dock)
- [Install Postgres on Ubuntu](https://phoenixnap.com/kb/how-to-install-postgresql-on-ubuntu)
- [sudo on jupyter docker](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/recipes.html#using-sudo-within-a-container)
