module ChessMoves
  class Queen < Piece

    def moves
      possible_moves = super
      max_height_move = @board.layout.size - 1
      max_lengt_move = @board.layout[0].size - 1
      
      # Rook moves
      max_height_move.times do |y|
        possible_moves << [0, y]
        possible_moves << [0, -y]
      end

      max_lengt_move.times do |x|
        possible_moves << [x, 0]
        possible_moves << [-x, 0]
      end

      # Bishop moves
      max_height_move.times do |y|
        break if y > max_height_move || y > max_lengt_move
        possible_moves << [y, y]
        possible_moves << [y, -y]
        possible_moves << [-y, y]
        possible_moves << [-y, -y]
      end

      possible_moves
    end
    
  end
end



