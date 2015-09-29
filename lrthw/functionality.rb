class Engine

	def initialize(scene_map)
		@scene_map = scene_map
	end

	def play()
		current_scene = @scene_map.opening_scene()
		last_scene = @scene_map.next_scene('finished')

		while current_scene != last_scene
			next_scene_name = current_scene_name.enter()
			current_scene = @scene_map.next_scene(next_scene_name)
		end
		current_scene.enter()
	end
end

class Map

	@@scenes = {
		'death' => Death.new(),
		'entrance' => Entrance.new(),
		'dragon' => Dragon.new(),
		'tower' => Tower.new(),
		'valley' => Valley.new(),
		'finished' => Finished.new()
	}

	def initialize(start_scene)
		@start_scene = start_scene
	end

	def next_scene(scene_name)
		continue = @@scenes[scene_name]
		return continue
	end

	def opening_scene()
		return next_scene(@start_scene)
	end

end


class Scene

	def initialize()
	end	

	def enter()
	end

end

a_map = Map.new('entrance')
