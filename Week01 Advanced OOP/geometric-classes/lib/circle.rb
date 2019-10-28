class Circle
  attr_reader :x, :y, :radius, :diameter, :area, :perimeter
  def initialize(radius, x_center = 0, y_center = 0)
    @radius = radius
    @x = x_center
    @y = y_center
    @diameter = radius * 2
    @area = ( radius ** 2 ) * Math:PI
    @perimeter = 2 * Math:PI * radius
  end
end
