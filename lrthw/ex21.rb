def add(a, b)
	puts "ADDING #{a} + #{b}"
	sum = a + b
	return "ADDING #{a}, #{b}, #{sum}"
end

def subtract(a, b)
	puts "SUBTRACTING #{a} - #{b}"
	return (a - b)
end

def multiply(a, b)
	puts "MULTIPLYING #{a} * #{b}"
	return a * b
end

def divide(a, b)
	puts "DIVIDING #{a} / #{b}"
	return a / b
end


puts "Let's do some match with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{add(30, 5)}, Height: #{height}, Weight: #{weight}, IQ:#{iq}"


# A puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

#what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

#sputs "That becomes: #{what}. Can you do it by hand?"

