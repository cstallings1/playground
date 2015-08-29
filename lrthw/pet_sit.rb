#Pet Sit Game
def cat_sit
	puts "There are three cats to watch; which will you pick first?"
	puts "Crystal, Punch, or Lucy?"
	cat = gets.chomp

	if cat == "Crystal"
		puts "Oh No! Crytal died of old age on your watch."
		cat_sit
	elsif cat == "Lucy"
		turd_scoop
	elsif cat == "Punch"
		puts "Punch is sleeping. Pick another cat"
		cat_sit
	else 
		puts "That's not even the right cat. Are you even at the right house?"
		exit(0)
	end
end

def dog_sit
	puts "Do you want to feed, walk, or bath the dog?"
	response = gets.chomp

	if response == "feed"
		dog_sit
	elsif response == "walk"
		puts "You've lost the dog."
		exit(0)
	elsif response == "bath"
		bath_time
	else
		exit(0)
	end
end

def bath_time
	puts "How many minutes did you bath the dog?"
	response = gets.chomp
	integer_response = response.to_i

	if integer_response < 5
		puts "Dog is still dirty. Try again"
		bath_time
	else
		puts "Well Done!"
	end
end

def turd_scoop
	puts "Enter \"turd\" for every peice of poop you scoop and then enter \"done\": "

	turd = []
	input = gets.chomp

	until input == "done" do
		input = gets.chomp
		turd << input
	end

	puts "You scooped #{turd.length} turds!"

end

def start
	puts "A friend just asked you to cat sit. What do you say?"
	response = gets.chomp

	if response == "yes"
		cat_sit
	elsif response == "no"
		puts "Ok. Well I have a dog too; you can watch him then."
		dog_sit
	else
		puts "Your indecision has ended the friendship."
		exit(0)
	end
end

start