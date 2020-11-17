# Pull the image from Dockerhub
docker pull ogierpaul/step4analysis
# Run the analysis to display
docker run -p 8888:8888 -e JUPYTER_TOKEN='letmein' ogierpaul/step4analysis
