require_relative "player"

class Team
  attr_reader :name, :players, :position_data

  def initialize(name, position_data)
    @name = name
    @position_data = position_data
    @players = []
  end
end
