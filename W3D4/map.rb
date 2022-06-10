class Map
    attr_reader :items

    def initialize
        @items = []
      
    end

    def set(key, value)
        @items.each {|pair| @items.shift([key, value]) if pair != [key, value]}
     
    end

    def get(key)
        @items.each do |pair| 
            if pair[first] == key
                @return pair.first 
            else
                return nil
            end
        end
    end

    def delete(key)
        @items.each do |pair| 
            if pair[first] == key
                @items.pop(pair) 
            else
                @items
            end
        end

    end

    def show
        return @items
      
    end
  end