
class Triangle
  attr_reader :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    validate_triangle
    if side_one == side_two && side_two == side_three
      :equilateral
    elsif side_one == side_two || side_two == side_three || side_one == side_three
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    validate_triangle = [(side_one + side_two > side_three), (side_two + side_three > side_one), (side_one + side_three > side_two)]
    [side_one, side_two, side_three].each { |side| validate_triangle << false if side <= 0 }
    raise TriangleError if validate_triangle.include?(false)
  end
  class TriangleError < StandardError  
  end
end
