class Triangle
  attr_accessor :angle1, :angle2, :angle3
  def initialize(angle1, angle2, angle3)
    @angle1 = angle1
    @angle2 = angle2
    @angle3 = angle3
  end

  def kind
    valid
    if angle1 == angle2 && angle2 == angle3
      :equilateral
    elsif angle1 == angle2 || angle2 == angle3 || angle1 == angle3
      :isosceles
    else
      :scalene
    end
  end

  def valid
    raise customerError if @angle1 + @angle2 > @angle3 || @angle2 + @angle3 > @angle1 || @angle1 + @angel3 > @angle2
      #raise customError
    end
  end
  

  class CustomError < StandardError
    "Ya'll ain't doin math"
  end

end
