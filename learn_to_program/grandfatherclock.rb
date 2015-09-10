def clock(&block)

	current_hour = Time.now.hour

	if current_hour > 12
		current_hour = current_hour - 12
	end

	if current_hour == 0
		current_hour == 12
	end
		
	end
	current_hour.times do 
		block.call
	end
	

end



clock do
	puts "Dong!"
end