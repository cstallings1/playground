puts "Hi how are you?"

response = ""
bye = 0

while bye < 3
	response = gets.chomp

	if response == "BYE"
		bye = (bye + 1)

		if bye == 3
		puts "BYE SONNY"
		else
		puts "Huh? Speak up!"
		end

	elsif response == response.upcase
		puts "No! Not since #{rand(1930..1940)}!"
		bye = 0
	else
		puts "Huh? Speak Up!"
		bye = 0
	end
	
end

