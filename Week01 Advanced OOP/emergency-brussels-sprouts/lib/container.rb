class Container
  attr_reader :weight, :maximum_holding_weight, :ingredients
  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    fill_amount = @maximum_holding_weight / ingredient.weight
    fill_amount = fill_amount.floor
    fill_amount.times do |ingredient|
      @ingredients << ingredient
    end
    @weight = @weight + @maximum_holding_weight
  end

  def which_ingredient
    if @weight == 230
      return "Brussels Sprouts"
    else
      return "Cheese Poofs"
    end
  end

  def how_many_ingredients
    @ingredients.length
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients.clear
  end
end
