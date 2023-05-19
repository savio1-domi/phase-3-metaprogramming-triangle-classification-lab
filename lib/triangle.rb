class Triangle
  # write code here
  attr_accessor :sides, :side1, :side2, :side3
  
  # @sides = []
  
  def initialize (side1, side2, side3)
    @sides = [side1, side2, side3]
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides.sort!
  end

  def kind
    if @sides.any?{ |side|  side <= 0 } || ( (@sides[0] + @sides[1]) <= @sides[2] )
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    elsif @sides.uniq.length == 3
      :scalene
    end
  end

  class TriangleError < StandardError
    "This is TriangleError message"    
  end

end
