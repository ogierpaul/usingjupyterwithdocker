# Objective
- Be able to read & write data from S3 buckets with PySpark running as a docker image

## Pre-requisites
- docker installed (
- Your AWS Key and Secret Key in a config file
- Access to an S3 bucket

## Set-up
- Customize the run_docker.sh script for your local configuration (among others: )
  - location of AWS credentials
  - location of notebook directory
- run_docker.sh
- Connect to localhost:8888 to run the notebook
  - Customize the notebook with your bucket information

## Important:
- Make sure that you start spark with the hadoop-aws package corresponding to your hadoop version
- See: [The recipes in the jupyter doc stacks](https://github.com/jupyter/docker-stacks/blob/master/docs/using/recipes.md#using-pyspark-with-aws-s3)
