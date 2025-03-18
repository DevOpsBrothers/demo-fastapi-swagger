docker container stop $(docker container ls -q)
docker rmi -f $(docker image ls -q)
# docker container rm $(docker container ls -q)
