class Stack
    attr_reader :items
    
    def initialize
        @items = []
      
    end

    def push(el)
        @items << el

      
    end

    def pop
        @items.pop
      
    end

    def peek
        return @items.last
      
    end
  end
  