puts "Provide a start year:"
start_year = gets.chomp.to_i

puts "Provide an end year:"
end_year = gets.chomp.to_i

puts "These are the leap years:"

if start_year > end_year
	puts "The second year must be greater than the first year."
else
	while start_year <= end_year
		if 
			(((start_year % 4 == 0) and (start_year % 100 != 0)) or (start_year % 400 == 0))
			puts start_year
		end
		(start_year = start_year.to_i + 1)
	end
puts "Done"
end