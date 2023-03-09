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

    def insert_node_middle(data)
        node = Node.new(data)

        if @head.nil?
            @head = node
        else
            temp = @head
            middle = @head
            while (temp.next_node != nil && temp.next_node.next_node != nil)
                middle = middle.next_node 
                temp = temp.next_node.next_node
                
                
            end
            node.next_node = middle.next_node
            middle.next_node = node

        end
    
    end

    def display

        if @head.nil?
            return
        else

            temp =  @head

            while (temp != nil)
                
                print( temp.data, " -> ")
                temp = temp.next_node
            end
        end

        print("NIl \n")
        
    end

end


def main()

    list = LinkedList.new
    list.insert_node_middle(1)
    list.insert_node_middle(2)
    list.insert_node_middle(3)
    list.insert_node_middle(4)
    list.insert_node_middle(5)
    list.insert_node_middle(6)
    list.insert_node_middle(7)
    list.insert_node_middle(8)
    list.insert_node_middle(9)
    list.display()
end

main()