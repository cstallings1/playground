require 'jumpstart_auth'

class MicroBlogger
	attr_reader :client

	def initialize
		puts "Initializing MicroBlogger"
		@client = JumpstartAuth.twitter
	end

	def tweet(message)
		@client.update(message)
	end

end

blogger = MicroBlogger.new
blogger.tweet("MicroBlogger Initialized")







































































# require 'pry'
# require 'jumpstart_auth'

# class MicroBlogger
# 	attr_reader :client

# 	def initialize
# 		puts "Initializing Microblogger"
# 		@client = JumpstartAuth.twitter
# 	end

# 	def tweet(message)
# 		if message.length <= 140
# 			then @client.update(message)
# 		else puts "Tweet cannot exceed 140 characters"
# 		end
# 	end

# 	def dm(target, message)
# 		puts "Trying to send #{target} this direct message:"
# 		puts message
# 		message = "d @#{target} #{message}"
# 		tweet(message)

# 		screen_names = @client.followers.collect { |follower| @client.user(follower).screen_name }
# 		if screen_names.include?("#{target}") == true 
# 			then @client.dm(target, message)
# 		else puts "You can only DM someone you are following"
# 		end
# 	end

# 	def followers_list
# 		screen_names = []
# 		@client.followers.each do |follower| 
# 			screen_names << @client.user(follower).screen_name 
# 		end
# 		return screen_names
# 	end

# 	def spam_my_followers(message)
# 		followers_list.each do |screen_name| 
# 			dm(screen_name, message) 
# 		end
# 	end

# 	def everyones_last_tweet
# 		friends = @client.friends
# 		friends.each do |friend|
# 			# find each friend's last message
# 			friend_status = friend.status.source
# 			# print each friend's screen_name
# 			puts "#{friend.screen_name}"
# 			# print each friend's last message
# 			puts "#{friend_status}"
# 			#puts "" # Just print a blank link to seperate people
# 		end
# 	end

# 	def run
# 		puts "Welcome to the JSL Twitter Client"
# 		command = ""
# 		while command != "q"
# 			printf "enter command:"
# 			input = gets.chomp
# 			parts = input.split(" ")
# 			command = parts[0]
# 			case command
# 				when 'q' then puts "Goodbye!"
# 				when 't' then tweet(parts[1..-1].join(" "))
# 				when 'dm' then dm(parts[1], parts[2..-1].join(" "))
# 				when 'spam' then spam_my_followers(parts[1..-1].join(" "))
# 				when 'elt' then everyones_last_tweet
# 				else
# 				  puts "Sorry, I don't know how to (#{command})"
# 			end
# 		end
# 	end	
# end

# blogger = MicroBlogger.new
# blogger.run












