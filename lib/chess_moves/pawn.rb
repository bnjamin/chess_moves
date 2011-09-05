module ChessMoves
  class Pawn < Piece

    def moves
      possible_moves = super

      possible_moves << [0, -1]
      if @digits == ""
        possible_moves << [0, -2] 
      end

      possible_moves
    end

    # We have to override this function because the pawn becomes a queen when
    # it reaches the top
    def new_pieces
      pieces = []
      
      moves.each do |move|
        new_x = @x + move[0]
        new_y = @y + move[1]
        if @board.valid_position?(new_x, new_y)
          if new_y == 0
            pieces << Queen.new(new_x, new_y, @digits) 
          else
            pieces << self.class.new(new_x, new_y, @digits)
          end
        end
      end

      pieces
    end
    
  end
end




