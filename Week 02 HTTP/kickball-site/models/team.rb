require_relative "player"

class Team
  attr_reader :name
  attr_reader :players

  def initialize(name, players)
    @name = name
    @players = players
  end
end
