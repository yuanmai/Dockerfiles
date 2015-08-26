FROM maven:3-jdk-8

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENTRYPOINT ["mvn"]

ONBUILD ADD . /usr/src/app
