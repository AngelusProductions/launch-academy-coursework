class Card
  attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def value?
    if @rank == "J" ||
       @rank == "Q" ||
       @rank == "K"
      value = 10
    elsif @rank == "A"
      value = 11
    else
      value = @rank.to_i
    end
  end

  def ace_card?
    @rank == "A"
  end
  
end
