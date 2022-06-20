class LRUCache
    def initialize(size)
        @size = size
        @cache = []
    end

    def count
        cache.length
      # returns number of elements currently in cache
    end

    def add(el)
      # adds element to cache according to LRU principle
    end

    def show
      # shows the items in the cache, with the LRU item first
      puts cache
      nil
    end

    private
    # helper methods go here!
    attr_accessor :cache, :size
  end