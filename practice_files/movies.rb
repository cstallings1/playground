



=begin
movies = {
	Goodfellas: 4,
	Django: 3,
	GoneGirl: 2,
	Wild: 2
}

puts "Welcome to your movie library. Would you like to: "
puts "Add - add a movie"
puts "Display - show all movies"
puts "Update - change a movie rating"
puts "Delete - delete a title from the library"

choice = gets.chomp

case choice
	when "add" 
		puts "What tite do you want to add?"
		title = gets.chomp
		if movies[title.to_sym].nil?
			puts "What rating?"
			rating = gets.chomp
			movies[title.to_sym] = rating.to_i
			puts "#{title} has been added with a rating of #{rating}."
		else 
			puts "This title already exists in the library."
		end
	when "display" 
		movies.each {|movie, rating| puts "#{movie}: #{rating}"}
	when "update" then 
		puts "What movie do you want to update?"
		title = gets.chomp
		if movies[title.to_sym].nil?
			puts "Movie doesn't exit in library. Please add first"
		else
			puts "What rating do you want the movie to have?"
			rating = gets.chomp
			movies[title.to_sym] = rating.to_i
			puts "#{title} has been updated with a new rating of #{rating}."
		end
	when "delete" then puts "Delete" 
		puts "What movie do you want to delete?"
		title = gets.chomp
		movies.delete(title.to_sym)
		puts "#{title} has now been deleted from library."
	else puts "Error - did not recognize command."
end
=end


	def add
		movies = {}
		puts "What tite do you want to add?"
		title = gets.chomp
		if movies[title.to_sym].nil?
			puts "What rating?"
			rating = gets.chomp
			movies[title.to_sym] = rating.to_i
			puts "#{title} has been added with a rating of #{rating}."
		else 
			puts "This title already exists in the library."
		end
	end

	def display
		movies.each {|movie, rating| puts "#{movie}: #{rating}"}
	end

	def update
		puts "What movie do you want to update?"
		title = gets.chomp
		if movies[title.to_sym].nil?
			puts "Movie doesn't exit in library. Please add first"
		else
			puts "What rating do you want the movie to have?"
			rating = gets.chomp
			movies[title.to_sym] = rating.to_i
			puts "#{title} has been updated with a new rating of #{rating}."
		end
	end

	def delete 
		puts "What movie do you want to delete?"
		title = gets.chomp
		movies.delete(title.to_sym)
		puts "#{title} has now been deleted from library."
	end

	def error
		puts "Error - do not recognie that command. Try again."
	end



	puts "Welcome to #{@name}'s movie library. Would you like to: "
	puts "Add - add a movie"
	puts "Display - show all movies"
	puts "Update - change a movie rating"
	puts "Delete - delete a title from the library"

	choice = gets.chomp



while choice != "exit"
	if choice == "add"
		add
	elsif choice == "update"
		update
	elsif choice == "display"
		display
	elsif choice == "delete"
		delete
	else 
		error
	end

end





























