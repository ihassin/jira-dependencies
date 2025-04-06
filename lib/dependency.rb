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

  def add_dependency(from:, to:)
    @graph[from] << to
  end

  def dependencies_for(node:)
    visited = Set.new
    collect_dependencies(node, visited)
    visited.delete(node) # Optional: remove the node itself from results
    visited.to_a
  end

  def most_depended_on
    counts = Hash.new(0)

    @graph.each_value do |deps|
      deps.each { |dep| counts[dep] += 1 }
    end

    max_count = counts.values.max
    return [] if max_count.nil?

    counts.select { |_, count| count == max_count }.keys
  end

  def ultimate_dependencies
    counts = Hash.new(0)

    @graph.keys.each do |node|
      dependencies_for(node: node).each do |dep|
        counts[dep] += 1
      end
    end

    max_count = counts.values.max
    return [] if max_count.nil?

    counts.select { |_, count| count == max_count }.keys
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
