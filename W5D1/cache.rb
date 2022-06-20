class LRUCache
    def initialize(n)
        @size = n
        @cache = []

    end

    def count
        @cache.size
      # returns number of elements currently in cache
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
            @cache << el
        elsif @cache >= @size
            @cache.shift
            @cache << el
        else
            @cache << el
        end
      # adds element to cache according to LRU principle
    end

    def show
        p cache
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!

  end