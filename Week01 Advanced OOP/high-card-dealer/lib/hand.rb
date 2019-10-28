require_relative "deck"

class Hand
  attr_reader :cards

  def initialize(deck)
    @cards = []
    4.times do
      @cards << deck.deal!
    end
  end

  def value
    hand_value = 0
    @cards.each do |card|
      hand_value += card.hand_value
    end
    hand_value
  end

  def read_out
    output = []
    @cards.each do |card|
      output << "#{card.rank}#{card.suit}"
    end
    output.join(", ")
  end
end
