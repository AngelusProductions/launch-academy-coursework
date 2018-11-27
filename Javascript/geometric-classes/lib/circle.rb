class Circle
  attr_reader :radius, :diameter, :x, :y

  def initialize (radius, x = 0, y = 0)
    @radius = radius
    @diameter = radius * 2
    @x = x
    @y = y
  end

  def diameter
    @radius * 2
  end

  def area
    Math::PI * @radius**2
  end

  def perimeter
    2 * Math::PI * @radius
  end

end
