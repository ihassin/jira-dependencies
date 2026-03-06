#!/usr/bin/env ruby

require_relative './lib/dependency'

FILE_NAME = 'ingestion.png'.freeze

puts 'Loading dependencies'

graph = DependencyGraph.new

graph.add_dependency(ticket: 7657, is_blocking: nil)
graph.add_dependency(ticket: 7658, is_blocking: nil)
graph.add_dependency(ticket: 7881, is_blocking: nil)
graph.add_dependency(ticket: 7884, is_blocking: nil)
graph.add_dependency(ticket: 7885, is_blocking: nil)
graph.add_dependency(ticket: 7886, is_blocking: nil)
graph.add_dependency(ticket: 7887, is_blocking: nil)
graph.add_dependency(ticket: 7890, is_blocking: 7887)

graph.save_graph(file_name: 'graph.yml')
# graph = DependencyGraph.new(file_name: 'graph.yml')

graph.generate_graph(file_name: FILE_NAME)

puts "Image created in file://#{FILE_NAME}"
