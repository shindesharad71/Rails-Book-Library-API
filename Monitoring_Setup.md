# Monitoring Setup Instructions

Follow the instruction step by step to install and setup Grafana monitoring in your application.

### 1. Install Prometheus

Prometheus installation source and guide available [here](https://prometheus.io/download/).

For Prometheus config please refer these [file](prometheus.yml)

### 2. Install Grafana

Grafana installations and setup instructions are available [here](https://grafana.com/grafana/download)

### 3. Connection to Prometheus

Connect Grafana to Prometheus by referring this [docs](https://prometheus.io/docs/visualization/grafana/)

### 4. Install Exporters

To monitor different kind of services we need to export these service metrics to Prometheus. This can be done using different kinds of exporters.

Install following exporters -

1. [Node Exporter](https://github.com/prometheus/node_exporter)
2. [Prometheus Exporter](https://github.com/discourse/prometheus_exporter)
3. [MySQLd Exporter](https://github.com/prometheus/mysqld_exporter)
4. [Redis Exporter](https://github.com/oliver006/redis_exporter)
5. [MongoDB Exporter](https://github.com/percona/mongodb_exporter)
6. [Elasticsearch Exporter](https://github.com/prometheus-community/elasticsearch_exporter)
7. [Yabeda](https://github.com/yabeda-rb/yabeda)
8. [Yabeda Rails](https://github.com/yabeda-rb/yabeda-rails)
9. [Yabeda Sidekiq](https://github.com/yabeda-rb/yabeda-sidekiq)
10. [Yabeda Prometheus](https://github.com/yabeda-rb/yabeda-prometheus)
11. [Prometheus Client](https://github.com/prometheus/client_ruby)
