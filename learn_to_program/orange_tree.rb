class OrangeTree

	def initialize
		@height = 0
		@age = 
		@oranges = 0
	end

	def height
		@height
	end

	def fruitBearing
		if @age >= 0 && @age <= 3
			@fruit = 0
		elsif @age >= 4 && @age <=10
			@fruit = rand(15..25)
		else
			@fruit = rand(26..35)
		end
		return puts "Your tree bore #{@fruit} oranges."
	end

	def oneYearPasses
		@age = @age + 1
		@height = @height + 1.25
		if @age > 20
			puts "Your tree lived a long and healthy life; now it's dead."
			exit
		end
		return print "age: #{@age} year(s), #{@height} ft"
	end

end


tree = OrangeTree.new


20.times do puts tree.oneYearPasses
end

puts tree.fruitBearing



