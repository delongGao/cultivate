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
