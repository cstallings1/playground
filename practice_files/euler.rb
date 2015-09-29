
=begin

PROJECT EULER #1
----------------
arr = []
for i in (1...1000)
	arr << i if (i % 3 == 0) || (i % 5 == 0)
end

sum = 0
arr.each {|i| sum += i}
puts sum
=end


=begin

PROJECT EULER #2
----------------
arr = [1, 2]

until arr[-2] + arr[-1] >= 4_000_000 do
	arr << arr[-2] + arr[-1]
end

sum = 0
arr.each {|i| sum += i if i % 2 == 0}

puts "Sum: #{sum}"
=end

# PROJECT EULER # 3 
# ------------------

def prime?(n)
	(2..n-1).each {|i| return false if n % i == 0}
	true
end

n = 600851475143
a = []
sumprod = 1
x = 2

while sumprod < n
	if n % x == 0 && prime?(x)
		a << x 
		sumprod *= x
	end
	x += 1
end

puts "The answer is #{a.last}"
































