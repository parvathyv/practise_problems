require 'pry'
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
      if head.value == value
        head = head.next
      else
        current_node = head.next
        prev_node = head
        while current_node
          if current_node.value == value
            prev_node.next = current_node.next
            return true
          end
          prev_node = current_node
          current_node = current_node.next
        end
        nil
      end
    end


    def remove_duplicates
      current_node = head
      prev_node = head
      first_node = head
      current_node = current_node.next
      while current_node.next != nil
        no_check = first_node.value
        while current_node.next != nil
          if current_node.value == no_check
            prev_node.next = current_node.next
          end
          prev_node = current_node
          current_node = current_node.next
        end
        first_node = first_node.next
        current_node = first_node.next
      end
    end

    def nth(n)
      ctr = 1
      current_node = head
      while current_node.next != nil
        if ctr < n
          ctr += 1
          current_node = current_node.next
        else
          puts current_node.value
          break
        end
      end
    end

    def nth_last(n)
      ctr = 1
      current_node = head
      while current_node.next != nil
        ctr += 1
        current_node = current_node.next
      end
      index_to_find = ctr - n
      ctr = 1
      current_node = head
      while ctr <= index_to_find
        current_node = current_node.next
        ctr += 1
      end
      puts current_node.value
    end

end

link = SinglyLinkedList.new(5)
link.add(4)
1.upto(10) do|index|
  link.add(index)
end
link.iterate
puts $/
#link.nth_last(3)
link.remove_duplicates
link.iterate
