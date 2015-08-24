class Car
	attr_accessor :speed

	def initialize(speed)
		@speed = speed
	end
end


class SaveDb
	def save(car)
		DB.sql("INSERT INTO Cars VALUES #{car.speed}")
	end
end



car1 = Car.new(180 mph)
SaveDb.new.save(car1)

