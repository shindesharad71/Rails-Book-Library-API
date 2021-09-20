module Prometheus
    module Controller

        # Create a default Prometheus registry for our metrics.
        prometheus = Prometheus::Client.registry

        # ******************** CUSTOM METRICS *************************

        # 1. Couter Metrics
        # *************************

        # create a new counter metric
        # More examples - https://github.com/prometheus/client_ruby#counter
        CUSTOM_COUNTER_METRICS_EXAMPLE = Prometheus::Client::Counter.new(:CUSTOM_COUNTER_METRICS_EXAMPLE, docstring: 'A costom counter metric example')
        # register the metric
        prometheus.register(CUSTOM_COUNTER_METRICS_EXAMPLE)
        # Use
        # CUSTOM_COUNTER_METRICS_EXAMPLE.increment


    end
end