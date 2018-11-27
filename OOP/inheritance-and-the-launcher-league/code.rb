require 'pry'

class SuperHero
  attr_reader :public_identity, :secret_identity


  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

end

class Speedster < SuperHero

  def powers
    "Superspeed"
  end

  def weakness
    "Friction"
  end

  def backstory
    "Bad case of ADHD"
  end

  def speed_in_mph
    super * 1000
  end

end

class Brawler < SuperHero

  def powers
    "Fighting"
  end

  def weakness
    "Puppies"
  end

  def backstory
    "Anger issues"
  end

  def health
    super * 20
  end

end

class Detective < SuperHero
  def powers
    "Supersleuth"
  end

  def weakness
    self.secret_identity
  end

  def backstory
    "Curious"
  end

  def speed_in_mph
    super / 6
  end
end

class Demigod < SuperHero
  def powers
    "Reality Morphing"
  end

  def weakness
    "Narrow-mindedness"
  end

  def backstory
    "Drank the holy drank"
  end

  def home
    "Cosmic Plane"
  end
end

class JackOfAllTrades < SuperHero
  def powers
    "mind control"
  end

  def weakness
    "trump supporters"
  end

  def backstory
    "tourist on Earth"
  end

  def home
    "Venus"
  end

  def species
    "Alien"
  end

  def psychic?
    true
  end
end

class WaterBased < SuperHero
  def powers
    "Getting people wet"
  end

  def weakness
    "fire"
  end

  def backstory
    "drank too much water"
  end

  def home
    "Earth's Oceans"
  end

  def psychic?
    true
  end

  def fans_per_thousand
    super / 100
  end
end
