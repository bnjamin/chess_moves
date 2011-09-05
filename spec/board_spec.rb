require 'spec_helper'

module ChessMoves
  describe Board do
    before(:each) do
      @board = Board.new
    end
    describe "#out_of_bounds?" do
      it "should be out of bounds when an x coordinate is negative" do
        @board.out_of_bounds?(-1, 0).should == true
      end

      it "should be out of bounds when an y coordinate is negative" do
        @board.out_of_bounds?(0, -1).should == true
      end

      it "should be out of bounds when an y coordinate is greater than the layout" do
        @board.out_of_bounds?(0, 4).should == true
      end

      it "should be out of bounds when an x coordinate is greater than the layout" do
        @board.out_of_bounds?(3, 0).should == true
      end

      it "should not be out of bounds when the x and y coordinate is inside the layout" do
        @board.out_of_bounds?(2, 2).should == false
      end
    end

    describe "#position" do
      it "should return the correct position when given a value" do
        @board.position("5").should == [1, 1]
        @board.position("0").should == [1, 3]
        @board.position("7").should == [0, 2]
      end
    end

    describe "#value" do
      it "should return the correct value given a position" do
        @board.value(0, 0).should == "1"
      end
    end

    describe "#valid_position?" do
      it "should return true given a position with a valid value" do
        @board.valid_position?(0, 0).should == true
      end

      it "should return false given a position with an invalid value" do
        @board.valid_position?(0, 3).should == false
      end
    end
  end
end
