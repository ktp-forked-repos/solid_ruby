class Ellipse

  attr_reader :focus_a, :focus_b, :major_axis

  def initialize(focus_a, focus_b, major_axis)
    @focus_a = focus_a
    @focus_b = focus_b
    @major_axis = major_axis
  end

  def circumference
  end

  def area
    p "area of an ellipse"
  end
end

class Circle < Ellipse

  def circumference
  end

  def area
    raise "Its not a circle" unless focus_a == focus_b
    p "area of circle"
  end
end

class AwesomeClient
  attr_reader :shape

  def initialize(shape)
    @shape = shape
  end

  def  calculate
    shape.area
  end
end

AwesomeClient.new(Circle.new(1,1,2)).calculate
AwesomeClient.new(Ellipse.new(1,3,2)).calculate

AwesomeClient.new(Circle.new(1,2,2)).calculate
