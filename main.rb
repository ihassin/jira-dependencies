#!/usr/bin/env ruby

require_relative './lib/dependency'

# graph = DependencyGraph.new
#
# graph.add_dependency(from: 1368, to: 1438)
# graph.add_dependency(from: 1438, to: 1425)
# graph.add_dependency(from: 219, to: 1425)
# graph.add_dependency(from: 1236, to: 1425)
# graph.add_dependency(from: 1237, to: 1425)
# graph.add_dependency(from: 1140, to: 354)
# graph.add_dependency(from: 1141, to: 354)
# graph.add_dependency(from: 1142, to: 354)
# graph.add_dependency(from: 1144, to: 354)
# graph.add_dependency(from: 946, to: 354)
# graph.add_dependency(from: 1015, to: 354)
# graph.add_dependency(from: 1253, to: 354)
# graph.add_dependency(from: 1258, to: 1363)
# graph.add_dependency(from: 1264, to: 1363)
# graph.add_dependency(from: 1255, to: 1363)
# graph.add_dependency(from: 1363, to: 1425)
# graph.add_dependency(from: 1270, to: 1363)
# graph.add_dependency(from: 1270, to: 1350)
#
# graph.save_graph(file_name: 'graph.yml')
graph = DependencyGraph.new(file_name: 'graph.yml')

puts "#{graph.most_depended_on} will unblock the dependency graph"
puts "#{graph.ultimate_dependencies} has the most dependencies"
