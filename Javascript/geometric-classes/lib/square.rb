class Square
  attr_reader :length, :width, :x, :y

  def initialize (side, x = 0, y = 0)
    @length = side.to_f
    @width = side.to_f
    @x = x
    @y = y
  end

  def diameter
    Math.sqrt(2 * @length**2)
  end

  def perimeter
    @length * 4
  end

  def area
    @length**2
  end

  def contains_point? (x, y)
    x >= @x - @width / 2 && x <= @x + @width / 2 &&
    y >= @y - @length / 2 && y <= @y + @length / 2
  end

end
