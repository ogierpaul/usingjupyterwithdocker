# Tell docker which base image to use
FROM jupyter/minimal-notebook

# You can as well use a requirements.txt file (Path is relative to docker-compose.yml)
COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER


# Copy the data in the /Data Folder to another folder on the container
# It can be useful in a data analysis context if you want the data to be integrated WITHIN the docker image
RUN mkdir /home/jovyan/data
# Remove previous folder
RUN rm -r /home/jovyan/work
# Copy the data to the folder
COPY ./data/Sample_Analysis.ipynb /home/jovyan/data
COPY ./data/mockaroo_data.csv /home/jovyan/data

# Launch the jupyter notebook
CMD ["jupyter", "notebook"]
