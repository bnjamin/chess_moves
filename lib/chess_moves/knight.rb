module ChessMoves
  class Knight < Piece

    def moves
      super + [                
        [2, -1],
        [2, 1],
        [-2, -1],
        [-2, 1],
        [1, 2],
        [1, -2],
        [-1, 2],
        [-1, -2]
      ]
    end
    
  end
end

