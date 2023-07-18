docker network create -d bridge testnetwork

docker run -p 9042:9042 --name=cassandra-1 --net=testnetwork -h=cassandra-1 -d \
    --mount type=bind,source=./cassandra-env.sh,target=/opt/cassandra/conf/cassandra-env.sh \
    --mount type=bind,source=./cassandra-exporter-agent-0.9.12.jar,target=/opt/cassandra/lib/cassandra-exporter-agent-0.9.12.jar \
    cassandra:4.1.1

docker exec cassandra-1 nodetool status

docker run -p 9043:9042 --name=cassandra-2 --net=testnetwork -h=cassandra-2 -d -e CASSANDRA_SEEDS=cassandra-1 \
    --mount type=bind,source=./cassandra-env.sh,target=/opt/cassandra/conf/cassandra-env.sh \
    --mount type=bind,source=./cassandra-exporter-agent-0.9.12.jar,target=/opt/cassandra/lib/cassandra-exporter-agent-0.9.12.jar \
    cassandra:4.1.1

docker exec cassandra-2 nodetool status

docker run -p 9044:9042 --name=cassandra-3 --net=testnetwork -h=cassandra-3 -d -e CASSANDRA_SEEDS=cassandra-1,cassandra-2 \
    --mount type=bind,source=./cassandra-env.sh,target=/opt/cassandra/conf/cassandra-env.sh \
    --mount type=bind,source=./cassandra-exporter-agent-0.9.12.jar,target=/opt/cassandra/lib/cassandra-exporter-agent-0.9.12.jar \
    cassandra:4.1.1

docker exec cassandra-3 nodetool status

docker run -d --name prometheus --net=testnetwork -p 9090:9090 -h prometheus -v ./prometheus_cassandra.yml:/etc/prometheus/prometheus.yml:ro prom/prometheus

docker run -d --name grafana --network testnetwork -p 3000:3000 -h grafana grafana/grafana