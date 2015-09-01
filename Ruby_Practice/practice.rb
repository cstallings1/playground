def kaprekar?(k)
	no_of_digits = k.to_s.length
	 square = (k ** 2).to_s

	 right = square.to_s.length
	 left = (square.to_s.length) - 1
	 a = right.to_i

	 

end

puts kaprekar?(297)