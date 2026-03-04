#!/usr/bin/env ruby

require_relative './lib/dependency'

puts 'Loading dependencies'

graph = DependencyGraph.new

graph.add_dependency(ticket: 120, is_blocking: 6)
graph.add_dependency(ticket: 121, is_blocking: 6)
graph.add_dependency(ticket: 122, is_blocking: 6)
graph.add_dependency(ticket: 6, is_blocking: 300)
graph.add_dependency(ticket: 7, is_blocking: nil)

graph.save_graph(file_name: 'graph.yml')
# graph = DependencyGraph.new(file_name: 'graph.yml')

graph.generate_graph(file_name: 'ingestion.png')
