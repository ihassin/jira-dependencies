require 'dependency'

RSpec.describe 'Dependency mapping' do
  it 'Identifies a simple dependency' do
    graph = DependencyGraph.new
    graph.add_dependency(ticket: 1020, is_blocking: 3)
    expect(graph.dependencies_for(node: 3)).to eq([1020])
  end

  it 'Identifies a double dependency' do
    graph = DependencyGraph.new
    graph.add_dependency(ticket: 3, is_blocking: 1020)
    graph.add_dependency(ticket: 30, is_blocking: 1020)
    expect(graph.dependencies_for(node: 1020)).to include(3, 30)
  end

  it 'Identifies a complex dependency' do
    graph = DependencyGraph.new
    graph.add_dependency(ticket: 1020, is_blocking: 3)
    graph.add_dependency(ticket: 3, is_blocking: 30)
    expect(graph.dependencies_for(node: 30)).to include(3, 1020)
  end

  it 'Identifies the ultimate dependency' do
    graph = DependencyGraph.new
    graph.add_dependency(ticket: 1020, is_blocking: 3)
    graph.add_dependency(ticket: 1021, is_blocking: 3)
    graph.add_dependency(ticket: 3, is_blocking: 30)

    graph.add_dependency(ticket: 120, is_blocking: 6)
    graph.add_dependency(ticket: 121, is_blocking: 6)
    graph.add_dependency(ticket: 122, is_blocking: 6)
    graph.add_dependency(ticket: 6, is_blocking: 300)

    expect(graph.ultimate_dependencies).to include(300)
  end

  it 'Persists and loads' do
    graph = DependencyGraph.new
    graph.add_dependency(ticket: 1021, is_blocking: 3)
    graph.add_dependency(ticket: 1020, is_blocking: 3)
    graph.add_dependency(ticket: 3, is_blocking: 30)
    graph.save_graph(file_name: 'rspec_graph.yml')

    new_graph = DependencyGraph.new(file_name: 'rspec_graph.yml')
    expect(graph.ultimate_dependencies).to include(30)
  end
end
