module Prometheus
    module Controller

        # Create a default Prometheus registry for our metrics.
        prometheus = Prometheus::Client.registry

        # ******************** CUSTOM METRICS *************************

        # 1. Couter Metrics - 
        # https://github.com/prometheus/client_ruby#counter
        # *************************

        # Create a new counter metric
        CUSTOM_COUNTER_METRICS_EXAMPLE = Prometheus::Client::Counter.new(:CUSTOM_COUNTER_METRICS_EXAMPLE, docstring: 'A costom counter metric example')
        # Register the metric
        prometheus.register(CUSTOM_COUNTER_METRICS_EXAMPLE)
        # Use
        # CUSTOM_COUNTER_METRICS_EXAMPLE.increment

        # Create a new counter metric with additional data
        CUSTOM_COUNTER_METRICS_WITH_LABEL_EXAMPLE = Prometheus::Client::Counter.new(:CUSTOM_COUNTER_METRICS_WITH_LABEL_EXAMPLE, docstring: 'A costom counter metric example with additional labels', labels: [:service])
        # Register the metric
        prometheus.register(CUSTOM_COUNTER_METRICS_WITH_LABEL_EXAMPLE)
        # Use
        # CUSTOM_COUNTER_METRICS_WITH_LABEL_EXAMPLE.increment(labels: {service: 'service_name'})


    end
end