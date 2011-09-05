module ChessMoves
  class Rook < Piece

    def moves
      possible_moves = super
      max_height_move = @board.layout.size - 1
      max_lengt_move = @board.layout[0].size - 1
      
      max_height_move.times do |y|
        possible_moves << [0, y]
        possible_moves << [0, -y]
      end

      max_lengt_move.times do |x|
        possible_moves << [x, 0]
        possible_moves << [-x, 0]
      end

      possible_moves
    end
    
  end
end


