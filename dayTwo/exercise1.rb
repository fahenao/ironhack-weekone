class Car
	def initialize(engine, sound)
		@sound = sound
		@engine = engine
	end

	def start
		puts @sound + @engine.move_pistons
	end
end


class Engine
	def move_pistons
		"SHACASHACA"
	end
end

class ElectricEngine
	def move_pistons
		electric_ignition
	end
end



fancycar = Car.new(Engine.new, "broom")
electricCar = Car.new(ElectricEngine.new, "beep")

puts fancycar.start

puts electricCar.start

