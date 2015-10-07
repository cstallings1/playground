require "ex47/game.rb"
require "test/unit"

class TestGame < Test::Unit::TestCase

	def test_room()
        gold = Room.new("GoldRoom",
                    """This room has gold in it you can grab. There's a
                door to the north.""")
        assert_equal(gold.name, "GoldRoom")
        assert_equal(gold.paths, {})
    end

    def test_room_paths()
    	center = Room.new("Center", "Test room in the center.")
    	north = Room.new("North", "Test room in the north.")
    	south = Room.new("South", "Test room in the south.")

    	center.add_paths({'north' => north, 'south' => south})
    	assert_equal(center.go('north'), north)
    	assert_equal(center.go('south'), south)
    end

    def test_map()
    	start = Room.new("Start", "You can go west and down a hole.")
    	west = Room.new("Trees", "There are trees here, you can go east.")
    	down = Room.new("Dungeon", "It's dark down here, you can go up.")

    	start.add_paths({'west' => west, 'down' => down})
    	west.add_paths({'east' => start})
    	down.add_paths({'up' => start})

    	assert_equal(start.go('west'), west)
    	assert_equal(start.go('west').go('east'), start)
    	assert_equal(start.go('down').go('up'), start)
    end

    def test_ex45()
    	entrance = Room.new("Entrance", "You can fight the dragon or run away.")
    	dragon = Room.new("Dragon", "You killed the dragon. You can save the princess now.")
    	run = Room.new("Run", "You chose to run away and you died.")
    	finish = Room.new("Finish", "This ends the game")

    	entrance.add_paths({'dragon' => dragon, 'run' => run})
    	dragon.add_paths({'save' => finish})
    	run.add_paths({'die' => finish})

    	assert_equal(entrance.go('dragon'), dragon)
    	assert_equal(entrance.go('run'), run)
    	assert_equal(entrance.go('dragon').go('save'), finish)
    	assert_equal(entrance.go('run').go('die'), finish)
    end

end
