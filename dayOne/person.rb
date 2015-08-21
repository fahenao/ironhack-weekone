class Person
	attr_reader :name
	attr_accessor :age

	def initialize (name, age)
		@name = name
		@age = age
	end

end

andrew = Person.new("Andrew", 24)

puts andrew.name

andrew.age = 25

puts andrew.age

andrew.age = 30

puts andrew.age