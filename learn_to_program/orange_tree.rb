class OrangeTree

	def initialize
		@fruit = 0
		@age = 0
		@height = 0
	end




	#private

	def height
		return @height
	end

	def oneYearPasses
		while @age < 20 
			@age = @age + 1	
		end

		if @height >= 0
			@height + 3
		end
	end

end

tree = OrangeTree.new
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses

puts @age