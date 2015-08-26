
# docker rm m2
docker run --name=m2 -v=/root/.m2 busybox
docker inspect -f {{.Volumes}} m2

docker build -t hello .
docker run --volumes-from=m2 hello compile

# .m2 directory should be cached this time
docker run --volumes-from=m2 hello compile 
