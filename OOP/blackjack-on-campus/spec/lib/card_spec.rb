require "spec_helper"

describe Card do
  let(:ace_card) { Card.new("♥", "A") }
  let(:jack_card) { Card.new("♥", "J")}

  describe "#initialize" do

    it "creates a card Object" do
      expect(ace_card).to be_a (Card)
    end

    it "should have a rank" do
      expect(ace_card.rank).to eq("A")
    end

    it "should have a suit" do
      expect(ace_card.suit).to eq("♥")
    end

  end

  describe "#ace_card?" do

    it "returns true if card is ace card" do
      expect(ace_card.ace_card?).to eq(true)
    end

    it "returns true if card is ace card" do
      expect(jack_card.ace_card?).to eq(false)
    end

  end
end
