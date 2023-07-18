FLINK_PROPERTIES="jobmanager.rpc.address: jobmanager"

docker network create -d bridge testnetwork

docker run -d --name=jobmanager --network testnetwork -p 8081:8081 --env FLINK_PROPERTIES="${FLINK_PROPERTIES}" flink:latest jobmanager

docker run -d --name=taskmanager --network testnetwork --env FLINK_PROPERTIES="${FLINK_PROPERTIES}" flink:latest taskmanager
