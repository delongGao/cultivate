class HashTable
  def initialize
    # first interation limitation:
    #   - can only be initialized with empty input
    @num_entries = 0
    # initiated as 100
    @num_buckets = 100
    # veeeery naive implementation of internal store:
    # 100 size array with every slot defaulted to an empty array
    @buckets = Array.new(@num_buckets, [])
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

  def []= key, val
    
  end

  private
    def cal_internal_index key
      internal_hash(key) % @num_buckets
    end

    # a very naive hash function
    def internal_hash key
      key.hash.abs
    end

    def check_collision key
      
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