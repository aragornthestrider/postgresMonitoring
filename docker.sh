docker network create -d bridge testnetwork

docker run -d --name grafana --network testnetwork -p 3000:3000 -h grafana grafana/grafana

docker run -d --name prometheus --network testnetwork -p 9090:9090 -h prometheus -v ./prometheus.yml:/etc/prometheus/prometheus.yml:ro prom/prometheus

docker run -d --name postgres --network testnetwork -p 5432:5432 -h postgres -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=postgres postgres:15.3

docker run -d --name postgres-exporter --network testnetwork -p 9187:9187 -h postgres-exporter -e DATA_SOURCE_NAME="postgresql://postgres:postgres@postgres:5432/postgres?sslmode=disable" prometheuscommunity/postgres-exporter

