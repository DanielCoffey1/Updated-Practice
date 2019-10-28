require_relative 'deck'

class Hand
  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    score = 0

    @cards.each do |card|
      score += card.value?
    end

    return score
  end
end
