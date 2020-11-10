# This is in iteration phase
# When you are frequently modifying the dockerfile (and thus the docker image)
# Ex: When you want to make sure you have all the libraries installed
# Ex: When you are still adding data or analysis notebooks to the docker images
# Build with a tag and label
docker build --tag ogierpaul/step4analysis:latest --label ogierpaul/step4analysis
# Run with --rm : Remove intermediate containers after a successful build --> remove container after exiting
docker run --rm ogierpaul/step4analysis
docker image prune --force --filter='label=ogierpaul/step4analysis'
