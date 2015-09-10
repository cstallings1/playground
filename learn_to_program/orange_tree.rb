class OrangeTree

	def initialize
		@height = 0
		@age = 0
		@oranges = 0
	end

	def height
		puts "height: #{@height} ft tall."
	end

	def age
		puts "age: #{@age} yrs old."
	end

	def pickAnOrange
		@oranges -= 1
		if @oranges > 0
			puts "MMmm that was delicious but now I only have #{@oranges} oranges."	
		else 
			puts "No more oranges left."
			exit
		end
	end

	def countTheOranges
		if @age >= 0 && @age <= 3
			@oranges = 0
		elsif @age >= 4 && @age <=10
			@oranges = rand(15..25)
		else
			@oranges = rand(26..35)
		end
		return puts "Your tree bore #{@oranges} oranges."
	end

	def oneYearPasses
		@oranges = 0
		@age = @age + 1
		@height = @height + 1.25
		if @age > 20
			puts "Your tree lived a long and healthy life; now it's dead."
			exit
		end
	end

end

tree = OrangeTree.new
command = ""

puts "You plant an orange tree. Enter a command to monitor it."

while command != "exit"
	command = gets.chomp
	if command == "one year"
		tree.oneYearPasses
	elsif command == "height"
		tree.height
	elsif command == "age"
		tree.age
	elsif command == "pick orange"
		tree.pickAnOrange
	elsif command == "count oranges"
		tree.countTheOranges
	elsif command == "exit"
		exit
	else 
		puts "I didn't understand that, please try again."
	end
end

