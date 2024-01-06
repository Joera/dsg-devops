FROM fluencelabs/nox:latest

WORKDIR /usr/bin/ 

COPY ./bin/car-utils .
WORKDIR / 