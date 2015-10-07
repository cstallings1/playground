class Lexicon

	def initialize()
	end

	def self.push_to_sentence(type, word)
		pair = [type, word]
		@@sentence << pair
	end

	def self.check_number(word)
		if word.to_i.to_s == word
			push_to_sentence('number', word.to_i)
		else
			push_to_sentence('error', word)
		end
	end


	def self.scan(input)
		words = input.split
		directions = ['north', 'south', 'east', 'west',
					'down', 'up', 'left', 'right']
		verbs = ['go', 'stop', 'eat', 'kill']
		stops = ['the', 'in', 'of', 'from', 'at', 'it']
		nouns = ['door', 'bear', 'princess', 'cabinet']
		@@sentence = []

		words.each {|word|
			if directions.include?(word)
				push_to_sentence('direction', word)
			elsif verbs.include?(word)
				push_to_sentence('verb', word)
			elsif stops.include?(word)
				push_to_sentence('stop', word)
			elsif nouns.include?(word)
				push_to_sentence('noun', word)
			else check_number(word)
			end
		}
		return @@sentence
	end

end