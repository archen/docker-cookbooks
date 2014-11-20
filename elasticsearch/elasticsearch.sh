#!/bin/bash
exec 2>$1
exec /elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch/elasticsearch.yml
