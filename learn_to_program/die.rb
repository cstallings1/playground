class Die

	puts "Roll the die: "
	set_number = gets.chomp

	def cheat
		if set_number > "0" || set_number < "7"
			puts "#{set_number}"
		else
			initialize
		end
	end
	
	def initialize
		roll
	end

	def roll
		@numberShowing = 1 + rand(6)
	end

	def showing
		@numberShowing
	end


end

puts Die.new.showing