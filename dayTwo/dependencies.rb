class Car < Engine
	def start
		move_pistons
	end
end

class Engine
	def move_pistons
		"Pshhhh"
	end
end


//////VS///// ("second is better 'cause you can change freely the engine methods")


class Car 
	def start
		Engine.new.move_pistons
	end
end

class Engine
	def move_pistons
		"Pshhhh"
	end
end


