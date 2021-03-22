class Triangle

  attr_accessor :a, :b, :c
    
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (self.a + self.b) <= self.c || (self.a + self.c) <= self.b || (self.b + self.c) <= self.a || self.a <= 0 || self.b <= 0 || self.c <= 0
        # begin
            raise TriangleError
        # rescue TriangleError => error
        #   puts error.message
        # end
    else
      if self.a == self.b && self.b == self.c
        :equilateral
      elsif self.a == self.b || self.b == self.c || self.c == self.a 
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    # def message
    #   puts "invalid Triangle. Try again!"
    # end
  end

end
