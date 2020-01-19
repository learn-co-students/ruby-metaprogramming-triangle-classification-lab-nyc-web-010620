class Triangle
  attr_reader :a, :b, :c

    def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
    end

    def shape
      [self.a, self.b, self.c]
    end
    
    def equilateral?(shape)
      shape.all?(shape[0])
    end

    def scalene?
      return true if (self.a != self.b) && (self.b != self.c)
    end

    def isosceles?
      if (self.a == self.c)
        return true
      elsif (self.b == self.c)
        return true
      elsif (self.a == self.b)
        return true
      end

      false
    end

    def triangle_inequality?(shape)
      return true if (
        (shape[0] + shape[1] > shape[2]) && 
        (shape[1] + shape[2] > shape[0]) && 
        (shape[2] + shape[0] > shape[1])
        )

        false
    end

    def kind 
      raise TriangleError if [self.a, self.b, self.c].all?(0)
      raise TriangleError if self.a < 0 || self.b < 0 || self.c < 0

      if equilateral?(self.shape)
        :equilateral
      elsif triangle_inequality?(self.shape) && self.isosceles?
        :isosceles
      elsif triangle_inequality?(self.shape) && self.scalene?
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
