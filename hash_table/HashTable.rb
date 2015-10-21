class HashTable
  def initialize
    # first interation limitation:
    #   - can only be initialized with empty input
    @num_entries = 0
    @buckets = []
    @num_buckets = @buckets.length
  end

  def num_entries
    @num_entries
  end

  def num_buckets
    @num_buckets
  end

  def load_factor
    return nil if @buckets.empty?
    @num_entries / @num_buckets
  end
end

# ================== Unit test =================
require 'minitest/autorun'

class HashTableTest < MiniTest::Unit::TestCase
  def setup
    @hash_table = HashTable.new
  end

  def test_instance_could_be_created
    assert_instance_of HashTable, @hash_table
  end

  def test_new_hash_table_hash_0_entries
    assert_equal @hash_table.num_entries, 0
  end

  def test_new_hash_table_hash_0_buckets
    assert_equal @hash_table.num_buckets, 0
  end

  def test_load_factor_for_new_hash_table_should_be_nil
    assert_nil @hash_table.load_factor
  end
end