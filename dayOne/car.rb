class Car
	attr_accessor :noise
	@@count = IO.read("car_count.txt").to_i

	def initialize(noise)
		@@count += 1
		IO.write("car_count.txt", @@count)
		@noise = noise
	end

	def make_noise
		puts @noise
	end

	def self.count
		puts @@count
	end

	def self.record
		@@count
	end

end

class RacingCar < Car

	def make_noise
		puts "BROOOM"
	end
end

ferrari = Car.new("beep")
toyota = Car.new("blap")
mazda = Car.new("brup")

car_array =[ferrari, toyota, mazda]

 #first car array
car_array.each do |car|
	car.make_noise
end

#second sound array
sound = ["Broom", "Meek", "Nyan"]

result = sound.map do |x|
	Car.new(x)
end

puts result.inspect

puts car_array.reduce("") { |sum, car| sum + car.noise }

