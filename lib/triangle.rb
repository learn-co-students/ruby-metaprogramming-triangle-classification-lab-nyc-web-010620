class Triangle

  attr_accessor :num1, :num2, :num3

  def initialize(num1,num2,num3)
    @num1 = num1
    @num2 = num1
    @num3 = num1 
  end 

  def kind

    if [@num1,@num2,@num3].uniq.length == 1
      :equilateral
    elsif [@num1,@num2,@num3].uniq.length == 2
      :isosceles
    elsif [@num1,@num2,@num3].uniq.length == 3
      :scalene 
    end 
    
  end 

    class Triangle < StandardError
  end 

end
