docker network create -d bridge testnetwork

docker run --name=scylla-node1 --net=testnetwork -h=scylla-node1 -d scylladb/scylla:5.1.0
docker run --name=scylla-node2 --net=testnetwork -h=scylla-node2 -d scylladb/scylla:5.1.0 --seeds=scylla-node1
docker run --name=scylla-node3 --net=testnetwork -h=scylla-node3 -d scylladb/scylla:5.1.0 --seeds=scylla-node1

docker exec -it scylla-node3 nodetool status

docker run -d --name prometheus --net=testnetwork -p 9090:9090 -h prometheus -v ./prometheus_scylladb.yml:/etc/prometheus/prometheus.yml:ro prom/prometheus

docker run -d --name grafana --network testnetwork -p 3000:3000 -h grafana \
    -v ./scylla-monitoring-scylla-monitoring-4.4.1/grafana/build:/var/lib/grafana/dashboards \
    -v ./scylla-monitoring-scylla-monitoring-4.4.1/grafana/plugins:/var/lib/grafana/plugins \
    -v ./scylla-monitoring-scylla-monitoring-4.4.1/grafana/provisioning:/var/lib/grafana/provisioning \
    grafana/grafana