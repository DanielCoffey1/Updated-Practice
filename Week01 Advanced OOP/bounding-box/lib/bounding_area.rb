class BoundingArea
  def initialize(x)
    @boxes = x
  end
  def boxes_contain_point?(x,y)
    @boxes.each do |box|
      if box.contains_point?(x,y)
        return true
      end
    end
    false
  end
end
