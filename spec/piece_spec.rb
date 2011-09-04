require 'spec_helper'

module ChessMoves
  describe Piece do
    describe "#initialize" do
      it "should have an empty string as digits if no digit param is given" do
        @piece = Piece.new(0, 0)
        @piece.digits.should == ""
      end
    end
  end
end
