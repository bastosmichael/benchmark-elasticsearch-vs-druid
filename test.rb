require 'benchmark/ips'
require 'elasticsearch'
require 'influxdb'
require 'humanize'

index = 'benchmark_test'

elasticsearch_client = Elasticsearch::Client.new log: true
influxdb = InfluxDB::Client.new
influxdb.create_database(index)
influxdb.create_database_user(index, index, index)
influxdb_client = InfluxDB::Client.new index, username: index, password: index

Benchmark.ips do |x|
  x.config(:time => 0.1, :warmup => 2)

  x.report('elasticsearch_add_data') do
    [*1...10].each do |i|
      elasticsearch_client.index index: index, type: index, id: i.humanize, body: { title: "Test #{i.humanize}", timestamp: Time.now.to_i }
    end
  end

  x.report('influx_add_data') do
    [*1...10].each do |i|
      influxdb_client.write_point(i.humanize, { title: "Test #{i.humanize}", time: Time.now.to_i })
    end
  end

  x.report('elasticsearch_query_data') do
    [*1...10].each do |i|
      puts elasticsearch_client.search index: index, body: { query: { match: { title: "Test #{i.humanize}"  } } }
    end
  end

  x.report('influx_query_data') do
    [*1...10].each do |i|
      influxdb_client.query "select * from #{i.humanize}" do |name, points|
        puts "#{name} => #{points}"
      end
    end
  end

  x.compare!
end

[*1...10].each do |i|
  elasticsearch_client.delete index: index, type: index, id: i.humanize
end

influxdb.delete_database(index)
influxdb.delete_database_user(index, index)
