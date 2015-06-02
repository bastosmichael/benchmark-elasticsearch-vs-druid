# Benchmark Elasticsearch vs InfluxDB for Timeseries

```Comparison:
         influx_add_data:        1.4 i/s
  elasticsearch_add_data:        1.0 i/s - 1.36x slower
       influx_query_data:        1.0 i/s - 1.31x slower
elasticsearch_query_data:        0.4 i/s - 3.38x slower```

and

```Comparison:
         influx_add_data:        1.4 i/s
  elasticsearch_add_data:        1.0 i/s - 1.42x slower
       influx_query_data:        0.9 i/s - 1.56x slower
elasticsearch_query_data:        0.4 i/s - 3.46x slower```

and

```Comparison:
         influx_add_data:        1.3 i/s
  elasticsearch_add_data:        1.0 i/s - 1.39x slower
       influx_query_data:        0.9 i/s - 1.44x slower
elasticsearch_query_data:        0.4 i/s - 3.65x slower```

and

```Comparison:
         influx_add_data:        1.3 i/s
  elasticsearch_add_data:        1.1 i/s - 1.20x slower
       influx_query_data:        1.0 i/s - 1.31x slower
elasticsearch_query_data:        0.3 i/s - 3.93x slower```

and

```Comparison:
         influx_add_data:        1.3 i/s
  elasticsearch_add_data:        1.0 i/s - 1.29x slower
       influx_query_data:        0.9 i/s - 1.46x slower
elasticsearch_query_data:        0.4 i/s - 3.36x slower```

## Just comparing adding data

```Comparison:
       influx_add_data:        1.3 i/s
elasticsearch_add_data:        1.0 i/s - 1.36x slower```

and

```Comparison:
       influx_add_data:        1.4 i/s
elasticsearch_add_data:        1.0 i/s - 1.33x slower```

and

```Comparison:
       influx_add_data:        1.7 i/s
elasticsearch_add_data:        1.0 i/s - 1.71x slower```

and

```Comparison:
       influx_add_data:        1.5 i/s
elasticsearch_add_data:        1.0 i/s - 1.48x slower```

and

```Comparison:
       influx_add_data:        1.4 i/s
elasticsearch_add_data:        1.0 i/s - 1.37x slower```

## Now just comparing data quering

```Comparison:
       influx_query_data:        0.9 i/s
elasticsearch_query_data:        0.4 i/s - 2.35x slower```

and

```Comparison:
       influx_query_data:        1.0 i/s
elasticsearch_query_data:        0.4 i/s - 2.50x slower```

and

```Comparison:
       influx_query_data:        0.9 i/s
elasticsearch_query_data:        0.4 i/s - 2.22x slower```

and

```Comparison:
       influx_query_data:        1.0 i/s
elasticsearch_query_data:        0.4 i/s - 2.38x slower```

and

```Comparison:
       influx_query_data:        1.0 i/s
elasticsearch_query_data:        0.4 i/s - 2.55x slower```
