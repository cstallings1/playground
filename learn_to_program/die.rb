class Die

	def initialize
		roll
	end

	def is_invalid_dice(cheat)
		cheat <= 0 || cheat > 6
	end
		
	def cheat

		begin 
			print "Set the die: "
			cheat = gets.chomp.to_i
			if is_invalid_dice(cheat) 
				puts "Please use a number between 1 and 6"
			end
		end while is_invalid_dice(cheat)
		@numberShowing = cheat 
		
	end

	def roll
		@numberShowing = 1 + rand(6)
	end

	def showing
		@numberShowing
	end


end

puts Die.new.cheat