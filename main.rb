#!/usr/bin/env ruby

require_relative './lib/dependency'

puts 'Loading dependencies'

graph = DependencyGraph.new

# graph.add_dependency(ticket: 1561, is_blocking: 1460)
# graph.save_graph(file_name: 'graph.yml')

graph = DependencyGraph.new(file_name: 'rspec_graph.yml')

graph.generate_graph(file_name: 'mbusa.png')