require './dict.rb'

# Create a mapping of state to abbreviation
states = Dict.new()
Dict.set(states, 'Oregon', 'OR')
Dict.set(states, 'Florida', 'FL')
Dict.set(states, 'California', 'CA')
Dict.set(states, 'New York', 'NY')
Dict.set(states, 'Michigan', 'MI')
Dict.set(states, 'Illinois', 'IL')
Dict.set(states, 'Indiana', 'IN')
Dict.set(states, 'Ohio', 'OH')

# Create a basic set of states and some cities in them
cities = Dict.new()
Dict.set(cities, 'CA', 'San Francisco')
Dict.set(cities, 'MI', 'Detroit')
Dict.set(cities, 'FL', 'Jacksonville')
Dict.set(cities, 'IL', 'Chicago')
Dict.set(cities, 'IN', 'Indianapolis')
Dict.set(cities, 'OH', 'Cleveland')

# add some more cities
Dict.set(cities, 'NY', 'New York')
Dict.set(cities, 'OR', 'Portland')



# puts out some cities
puts '-' * 10
puts "NY state has: #{Dict.get(cities, 'NY')}"
puts "OR state has: #{Dict.get(cities, 'OR')}"
puts "IL state has: #{Dict.get(cities, 'IL')}"
puts "OH state has: #{Dict.get(cities, 'OH')}"

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{Dict.get(states, 'Michigan')}"
puts "Florida's abbreviation is: #{Dict.get(states, 'Florida')}"
puts "Illinois' abbreviation is: #{Dict.get(states, 'Illinois')}"
puts "Indiana's abbreviation is: #{Dict.get(states, 'Indiana')}"

# do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: #{Dict.get(cities, Dict.get(states, 'Michigan'))}"
puts "Florida has: #{Dict.get(cities, Dict.get(states, 'Florida'))}"
puts "Illinois' has: #{Dict.get(cities, Dict.get(states, 'Illinois'))}"
puts "Indiana has: #{Dict.get(cities, Dict.get(states, 'Indiana'))}"

# puts every state abbreviation
puts '-' * 10
Dict.list(states)

# puts every city in state
puts '-' * 10
Dict.list(cities)

puts '-' * 10
# By default ruby says "nil" when something isn't in there
state = Dict.get(states, 'Texas')

if !state
	puts "Sorry, no Texas."
end

# default values using //= with the nil result
city = Dict.get(cities, 'TX', 'Does Not Exist')
puts "The city for the state of 'TX is: #{city}"

