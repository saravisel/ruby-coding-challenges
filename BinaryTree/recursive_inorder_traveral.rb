def main()

    tree = BinaryTree.new
    tree.root = TreeNode.new(15)
    tree.root.left = TreeNode.new(24)
    tree.root.left.left = TreeNode.new(35)
    tree.root.right = TreeNode.new(54)
    tree.root.right.left = TreeNode.new(62)
    tree.root.right.right = TreeNode.new(13)
    tree.inorder_traversal(tree.root)

end

class TreeNode
    attr_accessor :data, :left, :right

    def initialize(value)
        @data = value
        @left = nil
        @right = nil

    end

end


class BinaryTree

    attr_accessor :root

    def initialize
        @root = nil
    end

    def inorder_traversal(node)

        if node != nil

            inorder_traversal(node.left)
            print(" ", node.data)
            inorder_traversal(node.right)
        end

        return -1
    end

end

main()