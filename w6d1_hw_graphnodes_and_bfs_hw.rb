require 'byebug'
class GraphNode
  attr_accessor :val, :neighbors

  def initialize(val)
    @val = val
    @neighbors = []
  end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value)
  visited = Set.new()
  que = [starting_node]

  until que.empty?
    shifted_node = que.shift
    next if visited.include?(shifted_node)
    visited.add(shifted_node)
    return shifted_node if shifted_node.val == target_value
    que += shifted_node.neighbors
  end
  
  nil
end

p bfs(a, "b") # => b
p bfs(a, "f") # => nil