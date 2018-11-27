class BoundingBox
  attr_reader :left, :bottom, :right, :top, :width, :height

  def initialize (left, bottom, right, top)
    @left = left
    @bottom = bottom
    @right = left + right
    @top = bottom + top
    @width = @right - @left
    @height = @top - @bottom
  end

  def contains_point?(x, y)
    x >= @left && x <= @right && y >= @bottom && y <= @top
  end

end
