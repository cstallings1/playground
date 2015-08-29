def while_loop(number, n)

i = 0
numbers = []

while i < number
	puts "At the top i is #{i}"
	numbers << i

	i += n
	puts "Numbers now: ", numbers
	puts "At the bottom i is #{i}"
end

puts "The numbers: "

numbers.each do |num|
	puts num
end

end 


def for_loop
	numbers = []

	(0...6).each do |i|
		puts "At the top i is #{i}"
		numbers << i

		puts "Numbers now: ", numbers
		puts "At the bottom i is #{i}"
	end

	puts "The numbers: "

	numbers.each do |num|
		puts num
	end

end
for_loop