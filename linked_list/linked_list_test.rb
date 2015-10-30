require_relative './linked_list.rb'
require 'minitest/autorun'

class LinkedListTest < MiniTest::Unit::TestCase
  def setup
    @list_nil    = LinkedList.new
    @list_normal = LinkedList.new "test"
  end

  def list_initialized_right
    assert_nil @list_nil.head
    assert_instance_of Node, @list_normal.head
    assert_equal @list_normal.head.data, "test"
  end
end


# l = LinkedList.new 'test'

# 100.times do |i|
#   l.add "test #{i}"
# end

# l.to_s

# puts

# result = l.find "test 37"

# puts "Let's find a node"
# puts result