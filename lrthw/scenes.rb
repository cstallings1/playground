require 'pry'
class Scenes

	def initialize
		@@scenes = {
		'death' => Death.new(),
		'entrance' => Entrance.new(),
		'dragon' => Dragon.new(),
		'tower' => Tower.new(),
		'valley' => Valley.new(),
		'finished' => Finished.new()
	}
	end

end

class Death < Scenes 

	@@ways_to_die = [
		'You plunge to your death and fall to the rocky cliffs below.',
		'A strong wind blows you into the mote.',
		'You fall into the alligator pit below. You make a good snack.'
	]

	def initialize; end

	def enter()
		puts @@ways_to_die[rand(0..@@ways_to_die.length - 1)]
		exit
	end
end

class Entrance < Scenes

	def initialize; end

	def enter()
		puts "You are riding on your horse through the woods one day when you hear something."
		puts "It's the most beautiful voice you've ever heard."
		puts "You decide you have to marry whoever it belongs to so you start your search."
		puts "You follow the voice to a scary castle and walk to the entrance."
		puts "Oh no! You see a dragon guarding the castle. Do you enter or run away?"
		print "> "

		choice = gets.chomp

		if choice == "run away"
			puts "You run away to your mommy and she consoles you...for the rest of your life."
			exit
		elsif choice == "enter"
			puts "Brave choice. You move on to face the dragon."
			return Dragon.new().enter
		else
			puts "Did not recognize that command; please try again."
			return Entrance.new().enter
		end
	end
end

class Dragon < Scenes 

	def initialize; end

	def enter()
		puts "The dragon breathes fire at you and says you can only pass if you answer his questions."
		puts "The dragon asks: "
		puts "What...is your name?"
		name = gets.chomp
		puts "What...is your quest?"
		quest = gets.chomp
		puts "What...is the capitcal of Assyria?"
		capital = gets.chomp

		if (capital == "Ninevah") || (capital == "cheat")
			return Tower.new().enter
		else 
			puts "Wrong! I must now fight you to the death!"
		end

		print "Use your sword to swing at the mighty dragon as many times as you think> "
		swing = gets.chomp
		if swing.to_i < 12
			return Death.new().enter
		else
			puts "You defeated the mighty dragon! Now on to save your princess."
			return Tower.new().enter
		end
	end
end

class Tower < Scenes

	def initialize; end 

	def enter()
		puts "Rapunzel Rapunzel let down your hair!"
		puts "Rapunzel says she'll only let you up if you give her the password."
		guess = gets.chomp
		password_ary = [
			'hufflepuff', 'gizzard', 'password', 'pumpernickel', 'rye'
		]
		password = password_ary[rand(0..(password_ary.length))]

		count = 0
		while count < 5
			count += 1
			if (guess == password) || (guess == "cheat")
				puts "Rapunzel lets down her beautiful her and you climb up."
				return Valley.new().enter
			else
				puts "Nope! Try again."
			end
			guess =  gets.chomp
		end
		return Death.new().enter
	end
end

class Valley < Scenes

def initialize; end

	def enter()
		puts "You and Rapunzel escape the castle and flee to the valley below."
		puts "You live happily every after."
		return Finished.new().enter
	end

end

class Finished < Scenes

	def initialize; end

	def enter()
		puts "Goodbye."
		exit
	end
end



start = Entrance.new().enter
start





