class Queue
    attr_reader :items

    def initialize
      @items
    end

    def enqueue(el)
      @items.unshift(el)
    end

    def dequeue
      @items.pop
    end

    def peek
      return @items.last
    end
  end