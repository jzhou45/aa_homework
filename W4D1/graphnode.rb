require "byebug"

class GraphNode
    def initialize(value)
        @value = value
        @neighbors = []
    end

    attr_accessor :value, :neighbors

    def inspect
        self.value
    end
end

def bfs(starting_node, target_value)
    # return node if node.value == value
    arr = []
    queue = [starting_node]
    until queue.empty?
        # debugger
        node = queue.first
        if !arr.include?(node.value)
            return node if target_value ==  node.value
            node.neighbors.each { |neighbor| queue << neighbor if !arr.include?(neighbor.value) }
            arr << node.value
            queue.shift
        end
    end
    nil
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

p bfs(a, "b")
p bfs(a, "f")