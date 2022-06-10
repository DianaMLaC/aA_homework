class Stack
    attr_reader :items
    
    def initialize
        @items = []
      # create ivar to store stack here!
    end

    def push(el)
        @items << el

      # adds an element to the stack
    end

    def pop
        @items.pop
      # removes one element from the stack
    end

    def peek
        return @items.last
      # returns, but doesn't remove, the top element in the stack
    end
  end
  