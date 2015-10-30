# ================== Unit test =================
require_relative './hash_table.rb'
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
    assert_equal @hash_table.num_buckets, 100
  end

  def test_load_factor_for_new_hash_table_should_be_nil
    assert_equal @hash_table.load_factor, 0
  end
end