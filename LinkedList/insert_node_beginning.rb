class Node
    attr_accessor :data, :next_node

    def initialize(data)
        @data = data
        @next_node = nil

    end

end

class LinkedList

    attr_accessor :head

    def initialize
        @head = nil
    end

    def insert_node_beginning(data)
        node = Node.new(data)
        node.next_node = @head
        @head = node
    end

    def display

        if @head == nil
            return
        else

            temp = @head

            while ( temp != nil )
                print(temp.data, "->")
                temp = temp.next_node
            end
            print("NULL \n")
        end
    end
end


def main()

    list = LinkedList.new
    list.insert_node_beginning(1)
    list.insert_node_beginning(2)
    list.insert_node_beginning(3)
    list.insert_node_beginning(4)
    list.insert_node_beginning(5)
    list.insert_node_beginning(6)
    list.insert_node_beginning(7)
    list.insert_node_beginning(8)
    list.insert_node_beginning(9)
    list.display()
end

main()