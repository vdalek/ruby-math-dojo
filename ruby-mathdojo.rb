class MathDojo
	attr_accessor :sum

	def initialize
		@sum = 0
		puts "\nLet's do some math..."
	end
	def add(*num)
		if num.class == Array 
			@sum += num.flatten.reduce(:+)
		else
			@sum += num
		end
		self
	end
	def subtract(*num2)
		if num2.class == Array
			@sum -= num2.flatten.reduce(:+)
		else
			@sum -= num2
		end
		self
	end
	def result
		puts @sum
		self
	end
end

MathDojo.new.add(2).add(2,5).subtract(3,2).result
MathDojo.new.add(1).add([3,5,7,8], [2,4.3,1.25]).subtract([2,3], [1.1,2.3]).result
