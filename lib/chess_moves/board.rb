module ChessMoves
  class Board
    attr_reader :layout, :invalid_positions

    def initialize
      @layout = [ 
                  ["1", "2", "3"],
                  ["4", "5", "6"],
                  ["7", "8", "9"],
                  ["*", "0", "#"]
                ]
      @invalid_positions = ["*", "#"]
    end
    
    def out_of_bounds?(x, y)
      return true if x < 0
      return true if y < 0
      return true if (layout.size - 1) < y
      return true if (layout[y].size - 1) < x
      return false
    end

    def position(value)
      layout.each_with_index do |y_arr, y|
        layout[y].each_with_index do |x_arr, x|
          return [x, y] if layout[y][x] == value
        end
      end
    end

    def value(x, y)
      layout[y][x]
    end

    def valid_position?(x, y)
      if out_of_bounds?(x, y) || invalid_positions.include?(value(x, y))
        false
      else
        true
      end
    end

  end
end
