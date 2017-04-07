#!/usr/bin/env bash

go-bindata templates/...
go build

gox -osarch="linux/amd64"
docker build -t docker.io/osevg/openshifter:edge .
docker push docker.io/osevg/openshifter:edge