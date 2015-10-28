class Node
  attr_accessor :data, :next

  def initialize data = nil
    @data = data
  end

  def to_s
    @data
  end
end

# singly linked list
class LinkedList
  attr_accessor :head

  def initialize initial_value = nil
    @head = Node.new initial_value unless initial_value.nil?
  end

  def to_s
    iterator { |node|
      print " #{node.data} "
    }
  end

  def add data
    current_node = head
    if head.nil?
      @head = Node.new(data)
      return
    end
    iterator { |node|
      current_node = node
    }
    current_node.next = Node.new data
  end

  def find value
    iterator { |node|
      return node if node.data == value
    }    
  end

  def delete value
        
  end

  private
    def iterator
      current_node = head
      while current_node
        yield current_node
        current_node = current_node.next
      end
    end
end

# ============= fake test

l = LinkedList.new 'test'

100.times do |i|
  l.add "test #{i}"
end

l.to_s

puts

result = l.find "test 37"

puts "Let's find a node"
puts result