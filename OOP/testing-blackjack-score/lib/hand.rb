require_relative 'deck'
require_relative 'card'

class Hand
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    score = 0
    @cards.each do |card|
      score += card.value?
    end
    score
  end

end
