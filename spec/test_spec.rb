require 'dependency'

RSpec.describe 'Dependency mapping' do
  it 'Identifies a simple dependency' do
    graph = DependencyGraph.new
    graph.add_dependency(from: 1020, to: 3)
    expect(graph.dependencies_for(node: 1020)).to eq([3])
  end

  it 'Identifies a double dependency' do
    graph = DependencyGraph.new
    graph.add_dependency(from: 1020, to: 3)
    graph.add_dependency(from: 1020, to: 30)
    expect(graph.dependencies_for(node: 1020)).to include(3, 30)
  end

  it 'Identifies a complex dependency' do
    graph = DependencyGraph.new
    graph.add_dependency(from: 1020, to: 3)
    graph.add_dependency(from: 3, to: 30)
    expect(graph.dependencies_for(node: 1020)).to include(3, 30)
  end

  it 'Identifies the most dependent on' do
    graph = DependencyGraph.new
    graph.add_dependency(from: 1021, to: 3)
    graph.add_dependency(from: 1020, to: 3)
    graph.add_dependency(from: 3, to: 30)
    expect(graph.most_depended_on).to include(3)
  end

  it 'Identifies the ultimate dependency' do
    graph = DependencyGraph.new
    graph.add_dependency(from: 1021, to: 3)
    graph.add_dependency(from: 1020, to: 3)
    graph.add_dependency(from: 3, to: 30)
    expect(graph.ultimate_dependencies).to include(30)
  end

  it 'persists and loads' do
    graph = DependencyGraph.new
    graph.add_dependency(from: 1021, to: 3)
    graph.add_dependency(from: 1020, to: 3)
    graph.add_dependency(from: 3, to: 30)
    graph.save_graph(file_name: 'rspec_graph.yml')

    new_graph = DependencyGraph.new(file_name: 'rspec_graph.yml')
    expect(new_graph.ultimate_dependencies).to include(30)
    expect(new_graph.most_depended_on).to include(3)
  end
end
