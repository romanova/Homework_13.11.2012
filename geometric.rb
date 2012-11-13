class Figure

 def square
 	raise NotImplementedError
 end

 def perimeter
 	raise NotImplementedError
 end
 	
end

class Polygon < Figure

	def initialize(a, b, c, d)
		@a = a
		@b = b
		@c = c
		@d = d
	end
	
	def perimeter
		@a + @b + @c + @d
	end	

	def square
		semi_perimeter = perimeter / 2.0
		Math.sqrt((semi_perimeter - @a) * (semi_perimeter - @b) * (semi_perimeter - @c) * (semi_perimeter - @d))
	end		

end	

class Ellipsoid < Figure
    
    PI = 3.1415

	def initialize(a, b)
		@a = a
		@b = b
	end
		
	def perimeter
	    2 * PI * Math.sqrt((@a * @a + @b * @b) / 2.0)	
	end
	
	def square
	    PI * @a * @b
	end        

end

class Quadrangle < Polygon

	def initialize(a, b, c, d)
		super(a, b, c, d)
	end
		
end

class Triangle < Polygon

    def initialize(a, b, c)
        super(a, b, c, 0)
    end

end        

class Rectangle < Polygon
    
    def initialize(a, b)
    	super(a, b, a, b)
    end
    
end

class Rhombus < Polygon

    def initialize(a)
        super(a, a, a, a)  
    end
    
end

class Parallelogram < Polygon

    def initialize(a, b)
        super(a, b, a, b)
    end
    
end

class Trapeze < Polygon

    def initialize(a, b, c, d)
        super(a, b, c, d)
    end
    
end

class Ellipse < Ellipsoid
  
    def initialize(a, b)
        super(a, b)
    end
    
end

class Circle < Ellipsoid
 
    def initialize(r)
        super(r, r)
    end
    
end









