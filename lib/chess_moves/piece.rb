module ChessMoves
  class Piece
    attr_reader :digits

    def initialize(x, y, digits="")
      @x = x
      @y = y
      @board = Board.new
      @digits = digits + @board.value(x, y)
    end

    # Returns an array of moves
    # The moves are represented as arrays like this [delta_x, delta_y]
    def moves
      # All pieces can stay in place
      [[0,0]]
    end

    def new_pieces
      pieces = []
      
      moves.each do |move|
        new_x = @x + move[0]
        new_y = @y + move[1]
        if @board.valid_position?(new_x, new_y)
          pieces << self.class.new(new_x, new_y, @digits)
        end
      end

      pieces
    end

    def print_possible_combinations
      if @digits.size == 10
        puts @digits + "\n"
      else
        new_pieces.each do |piece|
          piece.print_possible_combinations
        end
      end
    end

  end
end
