#!/bin/bash

# Define required files
required_files=(
  "./elasticsearch/config/elasticsearch.yml"
  "./logstash/config/logstash.yml"
  "./logstash/pipeline"
  "./kibana/config/kibana.yml"
  "./app"
  "./nginx/config"
  "./filebeat/config/filebeat.yml"
  "./elastalert/config/elastalert_config.yaml"
  "./elastalert/rules"
  "./elastalert/logs"
)

# Check if required files exist
for file in "${required_files[@]}"; do
  if [ ! -e "$file" ]; then
    echo "Required file $file not found"
    exit 1
  else
     echo "Requrie file $file exits"
  fi
done

# If all required files and images are present, run docker-compose
docker-compose up 
