class Triangle
  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    validate_triangle
    greater_than_zero = @length_1 > 0 && @length_2 > 0 && @length_3 > 0
      if @length_1 == @length_2 && @length_2 == @length_3 && greater_than_zero
         :equilateral
      elsif (@length_1 == @length_2 || @length_2 == @length_3 || @length_1 == @length_3) && greater_than_zero
        :isosceles
      else
         :scalene
      end
  end

  def validate_triangle
  real_triangle = [(@length_1 + @length_2 > @length_3), (@length_1 + @length_3 > @length_2), (@length_2 + @length_3 > @length_1)]
  [@length_1, @length_2, @length_3].each do |side|
    real_triangle << false if side <= 0
  raise TriangleError if real_triangle.include?(false)
  end
end


    class TriangleError < StandardError
    end

end
