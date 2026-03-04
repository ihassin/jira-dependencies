require 'set'
require 'yaml'
require 'graphviz'

class DependencyGraph
  def initialize(file_name: '')
    @graph = if File.exist?(file_name)
               YAML.load_file(file_name)
             else
               Hash.new { |h, k| h[k] = [] }
             end
  end

  def add_dependency(ticket:, is_blocking:)
    @graph[is_blocking] << ticket
  end

  def ultimate_dependencies
    counts = Hash.new(0)

    @graph.keys.each do |node|
      dependents = dependencies_for(node: node)
      counts[node] += dependents.size
    end

    max_count = counts.values.max
    counts.select { |_, count| count == max_count }.keys
  end

  def dependencies_for(node:)
    visited = Set.new
    collect_dependencies(node, visited)
    visited.delete(node) # Optional: remove the node itself from results
    visited.to_a
  end

  def save_graph(file_name:)
    File.write(file_name, @graph.to_yaml)
  end

  def generate_graph(file_name:)
    # Create directed graph
    g = GraphViz.new(:G, type: :digraph)

    # Force left-to-right layout
    g[:rankdir] = 'LR'

    nodes = {}

    # Create all nodes
    (@graph.keys + @graph.values.flatten).uniq.each do |node|
      nodes[node] = g.add_nodes(node.to_s) unless node.nil?
    end

    # Reverse edges: dependency -> parent
    @graph.each do |parent, dependencies|
      dependencies.each do |dependency|
        g.add_edges(nodes[dependency], nodes[parent]) unless parent.nil?
      end
    end

    # Output PNG
    g.output(png: file_name)
  end

  private

  def collect_dependencies(node, visited)
    return if visited.include?(node)

    visited.add(node)
    @graph[node]&.each do |dep|
      collect_dependencies(dep, visited)
    end
  end

end
