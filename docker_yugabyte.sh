docker network create -d bridge testnetwork

#single node cluster

docker run -d --name yugabyte --net=testnetwork -h=yugabyte -p7000:7000 -p9000:9000 -p5433:5433 -p9042:9042 yugabytedb/yugabyte:latest bin/yugabyted start \
 --base_dir=/tmp/ybd \
 --master_flags "ysql_num_shards_per_tserver=4" \
 --tserver_flags "ysql_num_shards_per_tserver=4,follower_unavailable_considered_failed_sec=30" \
 --daemon=false

#node 1
docker run -d --name yugabyte1 --net=testnetwork -h=yugabyte1 -p7001:7000 yugabytedb/yugabyte:latest bin/yugabyted start \
  --base_dir=/tmp/ybd \
  --join=yugabyte \
  --master_flags "ysql_num_shards_per_tserver=4" \
  --tserver_flags "ysql_num_shards_per_tserver=4,follower_unavailable_considered_failed_sec=30" \
  --daemon=false

#node 2
docker run -d --name yugabyte2 --net=testnetwork -h=yugabyte2 -p7002:7000 yugabytedb/yugabyte:latest bin/yugabyted start \
  --base_dir=/tmp/ybd \
  --join=yugabyte \
  --master_flags "ysql_num_shards_per_tserver=4" \
  --tserver_flags "ysql_num_shards_per_tserver=4,follower_unavailable_considered_failed_sec=30" \
  --daemon=false


docker run -d --name prometheus --net=testnetwork -p 9090:9090 -h prometheus -v ./prometheus_yugabyte.yml:/etc/prometheus/prometheus.yml:ro prom/prometheus

docker run -d --name grafana --network testnetwork -p 3000:3000 -h grafana grafana/grafana