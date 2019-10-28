class Rectangle
  attr_reader :length, :width
  attr_accessor :x, :y
  def initialize(length, width, x = 0, y = 0)
    @length = length
    @width = width
    @x = x
    @y = y
  end

  def area
  @width * @length
  end

  def diagonal
    Math.sqrt((@length ** 2.0) + (@width ** 2.0))
  end

  def move_right
    @x += 1
  end

  def move_up
    @y += 1
  end

  def move_left
    @x -= 1
  end

  def move_down
    @y -= 1
  end
end
