class Node
    attr_accessor :value, :next

    def initialize(value = nil)
        @value = value
    end

    def to_s
        @value
    end
end

class SinglyLinkedList

    attr_accessor :head

    def initialize(first_value = nil)
      @head = Node.new(first_value) if first_value
    end

    def add(value)
      if head.nil?
        head = Node.new(value)
      else
        current_node = @head
        while current_node.next
          current_node = current_node.next
        end
        current_node.next = Node.new(value)
      end
    end

    def iterate
      current_node = head
       puts current_node.value
      while current_node.next != nil
        current_node = current_node.next
        puts current_node.value
      end
      nil
    end


    def find(value)
      current_node = head
      while current_node != nil
        return current_node if current_node.value == value
        current_node = current_node.next
      end
      nil
    end

    def remove(value)
      if head == value
        head = head.next

      else
        while current_node.next != nil
          if current_node.value != value
            current_node = current_node.next
          else

        end
      end
    end
end

link = SinglyLinkedList.new(0)
1.upto(10) do|index|
  link.add(index)
end
link.iterate
