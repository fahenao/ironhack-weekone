
class Vehicle
	attr_accessor :wheels, :sound
	def initialize(wheels, sound)
		@wheels = wheels
		@sound = sound
	end
end

class Counter
	def count(array)
		result = array.reduce(0) {|sum, x| sum + x.wheels}
		puts result
	end
end

class Sounds
	def make_sound(array)
		result = array.reduce("") {|sum, x| sum + x.sound}
		puts result
	end
end

truck = Vehicle.new(16,"BROOM")
bike = Vehicle.new(2, "bzzz")
car = Vehicle.new(4, "broom")

carArray = [truck, bike, car]

my_counter = Counter.new
my_counter_s = CounterS.new

my_counter.count(carArray)
my_counter_s.make_sound(carArray)