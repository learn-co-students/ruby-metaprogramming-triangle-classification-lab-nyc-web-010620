class Triangle
  #attr_accessor :side1, side2, side3

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    sides = [@side1,@side2,@side3]
    puts "sides: #{sides}"
    if sides.all? { |s| s > 0 } && sides.sort![0..1].sum > sides[2]
      puts "sides are legal!"
      case sides.uniq.size
      when 3
        :scalene
      when 2
        :isosceles
      when 1
        :equilateral
      end
    else
      puts "sides are illegal :("
      # begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    end
  end


  class TriangleError < StandardError
    def message
      "These values make up an invalid triangle. Please try again."
    end
  end
end
