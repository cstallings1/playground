class OrangeTree

	def initialize
		@height = 0
		@age = 0
	end

	def height
		@height
	end

	def oneYearPasses
		@age = @age + 1
		@height = @height + 3
		return print "age: #{@age} year(s), #{@height} ft"
	end

end


tree = OrangeTree.new


puts tree.oneYearPasses


