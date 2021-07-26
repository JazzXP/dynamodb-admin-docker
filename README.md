# DynamoDB Admin
[![Docker](https://github.com/JazzXP/dynamodb-admin-docker/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/JazzXP/dynamodb-admin-docker/actions/workflows/docker-publish.yml)
Built because the current official docker image is broken

## Running
Assuming only one instance of dynamodb is running:-

```
docker run --rm -e DYNAMO_ENDPOINT=http://$(docker ps --format "{{.Names}}" | grep dynamo):$(docker inspect $(docker ps --format "{{.Names}}" | grep dynamo) | jq ".[0].HostConfig.PortBindings"| jq "keys[]" | sed 's/[^0-9]//g') -p 8001:8001 --network $(docker inspect $(docker ps --format "{{.Names}}" | grep dynamo) | jq ".[0].HostConfig.NetworkMode" | sed 's/"//g')  samdickinson/dynamodb-admin
```
