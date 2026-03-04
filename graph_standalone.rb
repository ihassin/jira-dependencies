require 'graphviz'

@graph = {
  3   => [1020, 1021],
  30  => [3],
  6   => [120, 121, 122],
  300 => [6]
}

# Create directed graph
g = GraphViz.new(:G, type: :digraph)

# Force left-to-right layout
g[:rankdir] = 'LR'

nodes = {}

# Create all nodes
(@graph.keys + @graph.values.flatten).uniq.each do |node|
  nodes[node] = g.add_nodes(node.to_s)
end

# Reverse edges: dependency -> parent
@graph.each do |parent, dependencies|
  dependencies.each do |dependency|
    g.add_edges(nodes[dependency], nodes[parent])
  end
end

# Output PNG
g.output(png: "dependencies.png")
