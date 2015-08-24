class Engine
	attr_reader :sound
	def initialize(sound)
		@sound = sound
	end	
end


class Car < Engine
	attr_reader :sound
	def initialize(sound)
		@sound = sound
	end

	def make_sound(car, engine)
		"#{car.sound} #{engine.sound}"
	end
end


car1 = Car.new("brUUMm")
engine1 = Engine.new("bzzzzzzz")
engine2 = Engine.new("shaca-shaca")

puts car1.make_sound(car1, engine1)
puts car1.make_sound(car1, engine2)