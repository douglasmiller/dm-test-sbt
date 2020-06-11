# dm-test/sbt
This is a basic docker image based on debian:buster

It installs `openjdk-8-jdk` and `sbt` version `1.3.4`.

## Create docker container

Run the `./build-container.sh` script to build the docker container. This may take some time.

## Run the container

Run the `./run.sh` script to start the container. This will mount the current working directory as `/app` in the container (the container's working directory) and expose port 9000.