class Triangle
  attr_accessor :a, :b, :c

   
      def initialize(a, b, c)
        sides = [a, b, c].sort
        if sides[0] + sides[1] <= sides[2] || [a, b, c].include?(0)
            raise TriangleError
        else
          @a = a
          @b = b
          @c = c
        end
      end

    def kind
      case [self.a, self.b, self.c].uniq.size
      when 1 then :equilateral
      when 2 then :isosceles
      else        :scalene
      end
    end

  class TriangleError < StandardError
    def message
      "Ya triangle ain't shit"
    end
  end
end

# jojo = Triangle.new(1, 1 , 3)
# puts "#{jojo}"