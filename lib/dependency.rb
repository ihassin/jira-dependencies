require 'set'
require 'yaml'

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

  private

  def collect_dependencies(node, visited)
    return if visited.include?(node)

    visited.add(node)
    @graph[node]&.each do |dep|
      collect_dependencies(dep, visited)
    end
  end

end
