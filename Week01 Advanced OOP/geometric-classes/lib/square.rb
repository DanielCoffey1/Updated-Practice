class Square
  attr_reader :x, :y, :length, :width, :diameter, :perimeter, :area
  def initialize(side, x_center = 0, y_center = 0)
    @x = x_center
    @y = y_center
    @length = side
    @width = side
    @diameter = side * (2 ** 0.5)
    @perimeter = 4 * side
    @area = side ** 2
  end

  def contains_point?(x1, y1)
    half = @length * 0.5
    min_x = @x - half
    max_x = @x + half
    min_y = @y - half
    max_y = @y + half

    min_x <= x1 && x1 <= max_x && min_y <= y1 && y1 <= max_y
  end
end
