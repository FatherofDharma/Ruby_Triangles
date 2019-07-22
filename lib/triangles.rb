require('pry')

class Triangles
  attr_reader :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1.to_i
    @side2 = side2.to_i
    @side3 = side3.to_i
  end

  def type_check()

    if @side1 + @side2 < @side3 || @side1 + @side3 < @side2 || @side2 + @side3 < @side1
      'not a triangle'
    elsif @side1 === @side2 && @side2 === @side3
      'equilateral'
    elsif @side1 === @side2 || @side2 === @side3 || @side1 === @side3
      'isosceles'
    elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
      'scalene'
    end
  end

end
