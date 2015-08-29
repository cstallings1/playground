puts "Type in as many words as you want:"
input = gets.chomp

array = [input]
until input == "" do
	input = gets.chomp
		if input != ""
			then array.push "#{input}"
		end	
end

puts "#{array.sort}"

#Table of Contents Exercise

#content = ['Table of Contents', 'Chapter 1: Numbers', 'Chapter 2: Letters', 'Chapter 3: Variables', 'page 1', 'page 72', 'page 118']

#linewidth = 40
#puts content[0].center(linewidth)
#puts
#puts content[1].ljust(linewidth / 2) + content[4].rjust(linewidth / 2)
#puts content[2].ljust(linewidth / 2) + content[5].rjust(linewidth / 2)
#puts content[3].ljust(linewidth / 2) + content[6].rjust(linewidth / 2)

