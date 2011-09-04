class Board
  attr_reader :layout, :invalid_positions

  def initialize
    @layout = [ 
                ["1", "2", "3"],
                ["4", "5", "6"],
                ["7", "8", "9"],
                ["*", "0", "#"]
              ]
    @@invalid_positions = ["*", "#"]
  end
  
  def out_of_bounds?(x, y)
    return true if x < 0
    return true if y < 0
    return true if (layout.size - 1) < y
    return true if (layout[y].size - 1) < x
    return false
  end
end

describe Board do
  it "should be out of bounds when an x coordinate is negative" do
    @board = Board.new
    @board.out_of_bounds?(-1, 0).should == true
  end

  it "should be out of bounds when an y coordinate is negative" do
    @board = Board.new
    @board.out_of_bounds?(0, -1).should == true
  end

  it "should be out of bounds when an y coordinate is greater than the layout" do
    @board = Board.new
    @board.out_of_bounds?(0, 4).should == true
  end

  it "should be out of bounds when an x coordinate is greater than the layout" do
    @board = Board.new
    @board.out_of_bounds?(3, 0).should == true
  end

  it "should not be out of bounds when the x and y coordinate is inside the layout" do
    @board = Board.new
    @board.out_of_bounds?(2, 2).should == false
  end
end
