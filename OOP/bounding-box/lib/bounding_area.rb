class BoundingArea
  attr_reader :box, :boxes

  def initialize (boxes)
    @boxes = boxes
  end

  def boxes_contain_point? (x, y)
    contains = false
    return false if x == 0 && y == 0

    @boxes.each do |box|
      if box.contains_point?(x, y)
        contains = true
      end
    end

    contains
  end

end
