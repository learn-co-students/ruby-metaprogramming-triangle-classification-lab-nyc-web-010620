class Triangle
  attr_accessor  :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def triangle_inequality?
    return true if (
      (self.a + self.b > self.c) && 
      (self.b + self.c > self.a) && 
      (self.c + self.a > self.b)
      )

      false
  end

  def equilateral?
    [self.a, self.b, self.c].all?(self.a)
  end

  def scalene?
    return true if self.triangle_inequality? && ((self.a != self.b) && (self.b != self.c))
  end

  def isosceles?
    if self.triangle_inequality? && (self.a == self.c)
      return true
    elsif self.triangle_inequality? && (self.b == self.c)
      return true
    elsif self.triangle_inequality? && (self.a == self.b)
      return true
    end

    false
  end

  def kind 
    raise TriangleError if [self.a, self.b, self.c].all?(0)
    raise TriangleError if self.a < 0 || self.b < 0 || self.c < 0

    if self.equilateral?
      :equilateral
    elsif self.isosceles?
      :isosceles
    elsif self.scalene?
      :scalene
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "Illegal"
    end
  end
end