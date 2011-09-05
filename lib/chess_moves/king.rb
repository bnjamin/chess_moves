module ChessMoves
  class King < Piece

    def moves
      super + [
                [-1, -1],
                [-1, 0],
                [-1, 1],
                [0, -1],
                [0, 1],
                [1, -1],
                [1, 0],
                [1, 1]
      ]
    end
    
  end
end
