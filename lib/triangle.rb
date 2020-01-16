class Triangle
  
  attr_accessor :kind
  
  def initialize(length1,length2,length3,kind=nil)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind  
    if valid?
    else
    if [@length1,@length2,@length3].uniq.length == 1
      :equilateral
    elsif
      [@length1,@length2,@length3].uniq.length == 2
      :isosceles
    elsif
      [@length1,@length2,@length3].uniq.length == 3
      :scalene
    end
    end
  end

  def valid?
    array = [@length1,@length2,@length3].sort
    if [@length1,@length2,@length3].any? {|each| each <= 0} || array.pop >= array[0] += array[1]
          raise TriangleError
      end
  end

  class TriangleError < StandardError
    def message
      "(｡ŏ﹏ŏ) - NOPE!"
    end
  end

end
