=begin

def add(*numbers)
	numbers.inject(0) { |sum, number| sum + number }
end

def subtract(*numbers)
	sum = numbers.shift
	numbers.inject(sum) { |subtract, number| subtract - number }
end

def calculate(*numbers)
	options = numbers[-1].is_a?(Hash) ? numbers.pop : {}
	options[:add] = true if options.empty?
	return add(*numbers) if options[:add]
	return subtract(*numbers) if options[:subtract]
end

puts "#{add(1, 2, 3)}"
puts "#{subtract(1, 2, 3)}"
puts "#{calculate(1, 2, 3, add: true)}"
puts "#{calculate(1, 2, 3, subtract: true)}"

=end

=begin
def palindrome?(sentence)
	new_phrase = sentence.downcase.gsub(" ", "")
	new_phrase == new_phrase.reverse
end

puts palindrome?('never odd or even')

=end

def random_select(array, n)
	result = []
	n.times do 
		result << array[rand(array.length)]
	end
	result
end

puts random_select([1, 2, 3, 4], 2)