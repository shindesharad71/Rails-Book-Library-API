# This module to demonstrate custom metrics
module Prometheus
    module Controller

        # Create a default Prometheus registry for our metrics.
        prometheus = Prometheus::Client.registry

        # ******************** CUSTOM METRICS *************************

        # 1. Couter Metrics - 
        # Counter is a metric that exposes merely a sum or tally of things.
        # https://github.com/prometheus/client_ruby#counter
        # *************************************************************

        # Create a new counter metric
        CUSTOM_COUNTER_METRICS_EXAMPLE = Prometheus::Client::Counter.new(:get_all_books_called, docstring: 'A metrics to count get all books api count')
        # Register the metric
        prometheus.register(CUSTOM_COUNTER_METRICS_EXAMPLE)
        # Use
        # CUSTOM_COUNTER_METRICS_EXAMPLE.increment

        # Create a new counter metric with additional data
        CUSTOM_COUNTER_METRICS_WITH_LABEL_EXAMPLE = Prometheus::Client::Counter.new(:get_all_books_called_with_label, docstring: 'A metrics to count get all books api count with additional labels', labels: [:service])
        prometheus.register(CUSTOM_COUNTER_METRICS_WITH_LABEL_EXAMPLE)
        # Use
        # CUSTOM_COUNTER_METRICS_WITH_LABEL_EXAMPLE.increment(labels: {service: 'service_name'})


        # 2. Gauge Metrics 
        # Gauge is a metric that exposes merely an instantaneous value or some snapshot thereof.
        # https://github.com/prometheus/client_ruby#gauge
        # *************************************************************
        CUSTOM_GAUGE_METRICS_WITH_LABEL_EXAMPLE = Prometheus::Client::Gauge.new(:room_temperature_celsius, docstring: 'A gauge metrics showing room temprature', labels: [:room])
        prometheus.register(CUSTOM_GAUGE_METRICS_WITH_LABEL_EXAMPLE)
        # Use
        # CUSTOM_GAUGE_METRICS_WITH_LABEL_EXAMPLE.set(21.534, labels: { room: 'kitchen' })


        # 3. Histogram Metrics 
        # A histogram samples observations (usually things like request durations or response sizes) and counts them in configurable buckets. It also provides a sum of all observed values.
        # https://github.com/prometheus/client_ruby#histogram
        # *************************************************************
        CUSTOM_HISTOGRAM_METRICS_WITH_LABEL_EXAMPLE = Prometheus::Client::Histogram.new(:service_latency_seconds, docstring: 'A service latency hostogram metrics', labels: [:service])
        prometheus.register(CUSTOM_HISTOGRAM_METRICS_WITH_LABEL_EXAMPLE)
        # Use - record a value
        # CUSTOM_HISTOGRAM_METRICS_WITH_LABEL_EXAMPLE.observe(Benchmark.realtime { service.call(arg) }, labels: { service: 'books' })


        # 4. Summary Metrics 
        # Summary, similar to histograms, is an accumulator for samples. It captures Numeric data and provides an efficient percentile calculation mechanism.
        # https://github.com/prometheus/client_ruby#summary
        # *************************************************************
        CUSTOM_SUMMARY_METRICS_WITH_LABEL_EXAMPLE = Prometheus::Client::Summary.new(:service_latency_seconds_summary, docstring: 'A summary metrics example for calculating the latency', labels: [:service])
        prometheus.register(CUSTOM_SUMMARY_METRICS_WITH_LABEL_EXAMPLE)
        # Use - record a value
        # CUSTOM_SUMMARY_METRICS_WITH_LABEL_EXAMPLE.observe(Benchmark.realtime { service.call() }, labels: { service: 'database' })
    end
end