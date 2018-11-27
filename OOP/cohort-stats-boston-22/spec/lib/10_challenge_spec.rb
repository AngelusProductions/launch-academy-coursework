require "spec_helper"

describe Challenge do
  describe ".new" do
    it "initiates the challenge object" do
      challenge = Challenge.new("Juggling")
      expect(challenge).to be_a(Challenge)
    end
  end

  let(:challenge) { Challenge.new("Juggling") }

  describe "#title" do
    it "has an attribute reader for title" do
      expect(challenge.title).to eq("Juggling")
    end

    it "does not have an attribute writer for title" do
      expect { challenge.title = "Telekinesis" }.to raise_error(NoMethodError)
    end
  end
end
