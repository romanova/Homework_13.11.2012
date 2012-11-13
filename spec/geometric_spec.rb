require "spec_helper"

describe Figure do

	describe "perimeters of figures" do

		it 'should evaluate a perimeter of quadrangle' do
			Quadrangle.new(1, 2, 3, 4).perimeter.should eq 10
		end

		it 'should evaluate a perimeter of triangle' do
			Triangle.new(1, 2, 3).perimeter.should eq 6
		end
		
		it 'should evaluate a perimeter of rectangle' do
		    Rectangle.new(1, 2).perimeter.should eq 6
		end
		
		it 'should evaluate a perimeter of rhombus' do
		    Rhombus.new(2).perimeter.should eq 8
		end
		
		it 'should evaluate a perimeter of parallelogram' do
		    Parallelogram.new(2, 3).perimeter.should eq 10
		end
		
		it 'should evaluate a perimeter of trapeze' do 
		    Trapeze.new(2, 3, 4, 5).perimeter.should eq 14
		end
		
		it 'should evaluate a perimeter of ellipse' do
		    Ellipse.new(7, 1).perimeter.round(3).should eq 31.415
		end

		it 'should evaluate a perimeter of circle' do
			Circle.new(5).perimeter.round(3).should eq 31.415
		end               	
    end

    describe "squares of figures" do

    	it 'should evaluate a square of quadrangle' do
			Quadrangle.new(1, 2, 3, 4).square.round(3).should eq 4.899
		end

		it 'should evaluate a square of triangle' do
			Triangle.new(3, 2, 4).square.round(3).should eq 2.905
		end
		
		it 'should evaluate a square of rectangle' do
		    Rectangle.new(1, 2).square.should eq 2
		end
		
		it 'should evaluate a square of rhombus' do
		    Rhombus.new(2).square.should eq 4
		end
		
		it 'should evaluate a square of parallelogram' do
		    Parallelogram.new(2, 3).square.should eq 6
		end
		
		it 'should evaluate a square of trapeze' do 
		    Trapeze.new(2, 3, 4, 5).square.round(3).should eq 10.954
		end
		
		it 'should evaluate a square of ellipse' do
		    Ellipse.new(7, 1).square.round(3).should eq 21.991
		end

		it 'should evaluate a square of circle' do
			Circle.new(5).square.round(3).should eq 78.538
		end   
	end	       

end
