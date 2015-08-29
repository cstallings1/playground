=begin
class Die

	def roll
		@numberShowing = 1 + rand(6)
	end

	def showing
		@numberShowing
	end

end

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
=end

print "Year you were born: "
year = gets.chomp

print "Month you were born: "
month = gets.chomp


if month == "January"
	month = 1
elsif month == "February"
	month = 2
elsif month == "March"
	month = 3
elsif month == "April"
	month = 4
elsif month == "May"
	month = 5
elsif month == "June" 
	month = 6
elsif month == "July"
	month = 7
elsif month == "August" 
	month = 8
elsif month == "September" 
	month = 9
elsif month == "October" 
	month = 10
elsif month == "November" 
	month = 11
elsif month == "December" 
	month = 12
end


print "Day you were born: "
day = gets.chomp

current_date = Time.new
birth_date = Time.mktime(year, month, day)
years_old = (current_date - birth_date) / (60 * 60 * 24 *365)

puts "You are #{years_old.round} years old."
puts "SPANK! \n" * years_old
