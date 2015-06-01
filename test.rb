require 'benchmark/ips'
require 'elasticsearch'
require 'druid'

elasticsearch_client = Elasticsearch::Client.new log: true
index = 'test'

Benchmark.ips do |x|
  # Configure the number of seconds used during
  # the warmup phase (default 2) and calculation phase (default 5)
  x.config(:time => 0.01, :warmup => 2)

  # These parameters can also be configured this way
  # x.time = 1
  # x.warmup = 2

  x.report('elasticsearch_add_data') do
    [*1...10].each do |i|
      elasticsearch_client.index index: index, type: index, id: i, body: { title: "Test #{i}" }
      # elasticsearch_client.indices.refresh index: index
    end
  end

  x.report('druid_add_data') do
    # i = 1
    # while i < times
    #   puts i
    #   i += 1
    # end
  end

  # # Typical mode, runs the block as many times as it can
  # x.report("addition") { 1 + 2 }

  # # To reduce overhead, the number of iterations is passed in
  # # and the block must run the code the specific number of times.
  # # Used for when the workload is very small and any overhead
  # # introduces incorrectable errors.
  # x.report("addition2") do |times|
  #   i = 0
  #   while i < times
  #     1 + 2
  #     i += 1
  #   end
  # end

  # # To reduce overhead even more, grafts the code given into
  # # the loop that performs the iterations internally to reduce
  # # overhead. Typically not needed, use the |times| form instead.
  # x.report("addition3", "1 + 2")

  # # Really long labels should be formatted correctly
  # x.report("addition-test-long-label") { 1 + 2 }

  # # Compare the iterations per second of the various reports!
  x.compare!
end
