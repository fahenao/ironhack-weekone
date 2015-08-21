class Room
	attr_accessor :exit, :description

	def initialize(exit, description)
		@exit = exit
		@description = description
		@objects = ["Sword","computer","cat"]
	end
end


class Game
	def initialize
		@rooms = []
		@position = 0
		@inventoy = []
	end 

	def add_room(room)
		@rooms.push(room)
	end


	def start
		puts @rooms[@position].description
		puts "Where are you going? (N,E,S,W)"
		puts "There is an exit at " + @rooms[@position].exit + " direction."
		print ">: "
		answer = gets.chomp
		check_command(answer.upcase)
	end

	def check_command(answer)
		if @position == 4
			return exit
		elsif  answer == @rooms[@position].exit
			@position += 1
			return start
		else puts "Wrong way"
			puts "Choose another one"
			answer = gets.chomp
			return check_command(answer)
		end
	end


	

end



room1 = Room.new("E", "You just entered a black and scary room, get out of here NOW. You are in danger!!!!!")
room2 = Room.new("S", "You just fall into a pit and it stinks!")
room3 = Room.new("W", "There is a group of elephants running, RUN!")
room4 = Room.new("N", "You are hide into a bush. Choose wisely when to come out")
room5 = Room.new("E", "You are now running trough the valley while you cry")

user1 = Game.new

user1.add_room(room1)
user1.add_room(room2)
user1.add_room(room3)
user1.add_room(room4)
user1.add_room(room5)


user1.start
