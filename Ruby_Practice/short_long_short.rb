def organize_string(string_1, string_2)
	string_1 = string_1.to_s
	string_2 = string_2.to_s
	if string_1.length < string_2.length
		puts "#{string_1}#{string_2}#{string_1}"
		return "#{string_1}#{string_2}#{string_1}"
	else 
		puts "#{string_2}#{string_1}#{string_2}"
		return "#{string_2}#{string_1}#{string_2}"
	end
end


#CatieRetardCatie
organize_string("Catie", "Retard")

organize_string(10, 2)

organize_string("Catie", "Devin")

organize_string("Puncharoo", "Devin")







