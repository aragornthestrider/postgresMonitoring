docker network create -d bridge testnetwork

	
docker run -d --name postgres --network testnetwork -p 5432:5432 -e POSTGRES_PASSWORD=postgres bitnami/postgresql:latest