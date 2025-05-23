# Define required directories
REQUIRED_DIRS := persistence/zookeeper-1 \
	persistence/zookeeper-2 \
	persistence/zookeeper-3 \
	persistence/hdfs-namenode-1/dfs/namenode \
	persistence/hdfs-namenode-2/dfs/namenode \
	persistence/hdfs-datanode-1/dfs/datanode \
	persistence/hdfs-datanode-2/dfs/datanode \
	persistence/journalnode-1 \
	persistence/journalnode-2 \
	persistence/journalnode-3 

# Create directories
init:
	@echo "Creating required directories..."
	@mkdir -p $(REQUIRED_DIRS)
	@echo "Directories created successfully!"

# Clean up
clean:
	@echo "Cleaning up..."
	@sudo rm -rf persistence/zookeeper-1 \
		persistence/zookeeper-2 \
		persistence/zookeeper-3 \
		persistence/hdfs-namenode-1 \
		persistence/hdfs-namenode-2 \
		persistence/hdfs-datanode-1 \
		persistence/hdfs-datanode-2 \
		persistence/journalnode-1 \
		persistence/journalnode-2 \
		persistence/journalnode-3 
	@echo "Cleaned up successfully!"

# Docker compose commands
up:
	@echo "Starting containers..."
	docker compose up -d

down:
	@echo "Stopping and removing containers..."
	docker compose down

restart:
	@echo "Restarting containers..."
	docker compose restart

logs:
	@echo "Viewing logs of containers..."
	docker compose logs -f

ps:
	@echo "Listing running containers..."
	docker compose ps

# Display help
help:
	@echo "Available commands:"
	@echo "  make init     : Create required directories"
	@echo "  make clean   : Clean up logs and tmp directories"
	@echo "  make up      : Start docker containers"
	@echo "  make down    : Stop docker containers"
	@echo "  make restart : Restart docker containers"
	@echo "  make logs    : View logs of containers"
	@echo "  make ps      : List running containers"
	@echo "  make help    : Display this help"

.PHONY: init clean up down restart logs ps help
