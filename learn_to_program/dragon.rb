class Dragon
	
	def initialize(name)
		@name = name
		@asleep = false
		@stuffInBelly = 10
		@stuffInIntestine = 0

		puts "#{@name} is born."
	end

	def feed
		puts "You feed #{@name}."
		@stuffInBelly = 10
		passageOfTime
	end

	def walk
		puts "You walk #{@name}."
		@stuffInIntestine = 0
		passageOfTime	
	end

	def putToBed
		puts "You put #{@name} to bed."
		@asleep = true
		3.times do 
			if @asleep 
				passageOfTime
			end
			if @asleep
				puts "#{@name} snores, filling the room with smoke."
			end
		end
		if @asleep 
			@asleep = false
			puts "#{@name} wakes up slowly."
		end
	end

	def toss
		puts "You toss #{@name} up into the air."
		puts "He giggles, which singes eyebrows."
		passageOfTime
	end

	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts "He briefly dozes off..."
		passageOfTime
			if @asleep
				@asleep = false
				puts "...but wakes when you stop."
			end
	end

	private
	# Private means that the methods defined here are
	# methods internal to the object. (You can feed your dragon but you can't ask if he is hungry).

	def hungry?
		# Method can end with "?"
		# Usually we only do this if the method
		# returns true or false, like this:
		@stuffInBelly <= 2
	end

	def poopy?
		@stuffInIntestine >= 8
	end

	def passageOfTime
		if @stuffInBelly > 0
			# Move food from belly to intestine
			@stuffInBelly = @stuffInBelly - 1
			@stuffInIntestine = @stuffInIntestine + 1
		else
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name} is starving! In desperation, he ate YOU!"
			exit
		end

		if @stuffInIntestine >= 10 
			@stuffInIntestine = 0
			puts "Whoops! #{@name} had an accident!..."
		end

		if hungry?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name}'s stomach grumbles..."
		end

		if poopy?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name} does the potty dance..."
		end
	end
end



pet = Dragon.new("Norbert")

command = ""


while command != "exit"
	print "Enter a command to control your dragon: "
	command = gets.chomp
	if command == "feed"
		pet.feed
	elsif command == "walk"
		pet.walk
	elsif command == "put to bed"
		pet.putToBed
	elsif command == "toss"
		pet.toss
	elsif command == "rock"
		pet.rock
	elsif command == "exit"
		exit
	else 
		"I don't recognize your command, please re-enter."
	end
end




























