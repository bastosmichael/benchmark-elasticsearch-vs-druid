### Benchmark Elasticsearch vs InfluxDB for Timeseries

```Comparison:
         influx_add_data:      160.8 i/s
  elasticsearch_add_data:      144.4 i/s - 1.11x slower
elasticsearch_query_data:       52.9 i/s - 3.04x slower
       influx_query_data:       23.7 i/s - 6.78x slower```

With deleting data at the end (edited)

```Comparison:
         influx_add_data:      153.5 i/s
  elasticsearch_add_data:      124.2 i/s - 1.24x slower
elasticsearch_query_data:       74.5 i/s - 2.06x slower
       influx_query_data:       17.3 i/s - 8.88x slower```


Just comparing adding data

```Comparison:
       influx_add_data:      143.2 i/s
elasticsearch_add_data:       98.8 i/s - 1.45x slower```

Now just comparing data quering

```Comparison:
elasticsearch_query_data:       86.8 i/s
       influx_query_data:       20.5 i/s - 4.23x slower```
