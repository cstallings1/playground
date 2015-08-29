
#for i in 99.downto(0) do
	#puts "#{i} bottles of beer on the wall.
	#{i} bottles of beer.
	#Take one down. Pass it around.
	#{i - 1} bottles of beer on the wall."
#end

bottles = 100

while bottles > 90
	puts "#{bottles - 1}".to_s + "bottles of beer on the wall" + "\n#{bottles - 1}".to_s + 
	"bottles of beer. Take one down, pass it around" + "\n#{bottles - 2}".to_s + 
	"bottles of beer on the wall."

	bottles = bottles -  1
end





