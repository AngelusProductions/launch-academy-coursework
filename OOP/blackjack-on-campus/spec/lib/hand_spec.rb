require "spec_helper"

describe Hand do
  # '♦', '♣', '♠', '♥'

  let(:hand) { Hand.new([Card.new("♦",10), Card.new("♥","J")]) }

  describe "#calculate_hand" do
    it "turns ranks into values and adds them up" do
      expect(hand.calculate_hand).to eq(20)
    end
  end
  
end
