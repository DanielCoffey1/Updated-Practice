class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def value
    if @rank.is_a?(Integer)
      return @rank
    else
      if @rank == 'J'
        return 11
      elsif @rank == 'Q'
        return 12
      elsif @rank == 'K'
        return 13
      else @rank == 'A'
        return 14
      end
    end
  end
end
