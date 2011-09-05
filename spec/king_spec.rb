require 'spec_helper'

module ChessMoves
  describe King do
    describe "#new_pieces" do
      it "should return 9 new kings if the starting field is 5" do
        @king = King.new(1, 1)
        @king.new_pieces.size.should == 9
      end

      it "should return 4 new kings if the starting field is 1" do
        @king = King.new(0, 0)
        @king.new_pieces.size.should == 4
      end

      it "should return 4 new kings if the starting field is 0" do
        @king = King.new(1, 3)
        @king.new_pieces.size.should == 4
      end

    end
  end
end
