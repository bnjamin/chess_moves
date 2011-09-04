module ChessMoves
  class Piece
    attr_reader :x, :y, :digits, :board

    def initialize(x, y, digits="")
      @x = x
      @y = y
      @digits = digits
      @board = Board.new
    end

    def valid_moves
      [0,0]
    end

  end
end
