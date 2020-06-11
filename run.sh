#!/bin/bash

docker run -it --rm -v "$(pwd)":/app -p 9000:9000 dm-test/sbt
