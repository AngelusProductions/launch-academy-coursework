require_relative 'deck'
require_relative 'card'

class Hand
  attr_reader :cards
  attr_accessor :ace_offset

  def initialize(cards)
    @cards = cards
    @ace_offset = 0
  end

  def calculate_hand
    score = 0
    @cards.each do |card|
      score += card.value?
    end
    score - @ace_offset
  end

end
