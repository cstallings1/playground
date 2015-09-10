$nesting_depth = 0
$space = " "


def log(block_description, &block)

	puts $space * $nesting_depth + "Beginning \"#{block_description}\"..."
	$nesting_depth = $nesting_depth + 1
	value_returned = block.call
	$nesting_depth = $nesting_depth - 1
	print $space * $nesting_depth + "...\"#{block_description}\" is finished, returning: "
	puts value_returned

end

log("Outer Block") do 

	log("some little block") do

			log("teeny-tiny block") do
				"lots of love"
			end

		42
	end

	log("yet another block") do
		"I like Indian food!"
	end

true
end
