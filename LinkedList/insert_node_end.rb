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

    def insert_node_end(data)
        node = Node.new(data)
        if @head.nil?
            @head = node
        else
            temp = @head
            while( temp.next_node != nil)
                temp = temp.next_node
            end
            temp.next_node = node
        end
    
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
    list.insert_node_end(1)
    list.insert_node_end(2)
    list.insert_node_end(3)
    list.insert_node_end(4)
    list.insert_node_end(5)
    list.insert_node_end(6)
    list.insert_node_end(7)
    list.insert_node_end(8)
    list.insert_node_end(9)
    list.display()
end

main()