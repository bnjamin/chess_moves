require 'spec_helper'

module ChessMoves
  describe Piece do
    describe "#initialize" do
      it "should have an 1 as digits if x = 0 & y = 0 and the digits param is nil" do
        @piece = Piece.new(0, 0)
        @piece.digits.should == "1"
      end

      it "should have an 11 as digits if x = 0 & y = 0 and the digits param is 1" do
        @piece = Piece.new(0, 0, "1")
        @piece.digits.should == "11"
      end
    end
  end
end
