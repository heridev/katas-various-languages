class BinaryTree
  attr_accessor :root

  def initialize(root)
    @root = root
  end
end

class Node
  attr_accessor :left, :right, :value

  def initialize(left = nil, right = nil, value = nil)
    @left = left
    @right = right
    @value = value
  end
end

node = Node.new(nil, nil, 100)

left_node = Node.new(nil, nil, 50)
node.left = left_node

bt = BinaryTree.new(node)
puts bt.root.value
puts bt.root.left.value
