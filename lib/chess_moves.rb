require 'chess_moves/board'
require 'chess_moves/piece'
require 'chess_moves/king'
require 'chess_moves/knight'
require 'chess_moves/rook'
require 'chess_moves/bishop'
require 'chess_moves/queen'
require 'chess_moves/pawn'

module ChessMoves
  class Digits
    def initialize(brick, value)
      @brick_name = brick
      @value = value
      klass = ChessMoves.const_get(brick)
      position = Board.new.position(value)
      @brick = klass.new(position[0], position[1])
    end

    def print_digits
      @brick.print_possible_combinations
    end
  end
end
