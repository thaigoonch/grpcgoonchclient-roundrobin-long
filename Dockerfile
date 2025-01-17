FROM golang:1.23
WORKDIR /app
COPY . /app

ENV GOOS=linux

RUN chmod +x ./generate.sh && \
    ./generate.sh && \
    go install ./...
CMD ["/go/bin/grpcgoonchheadlesslongclientroundrobin"]