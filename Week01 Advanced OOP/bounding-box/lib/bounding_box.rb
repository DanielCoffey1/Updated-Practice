class BoundingBox
  attr_reader :left, :right, :bottom, :top, :width, :height
  def initialize(x, y, width, height)
    @left = x
    @right = x + width

    @bottom = y
    @top = y + height

    @width = width
    @height = height
  end

  def contains_point(x,y)
    left <= x && x <= right && bottom <= y && y <= top
  end
end
