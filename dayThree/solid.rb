class FileSystem
	def self.validate_password
		IO.read("file.txt")
	end
end


class UserInfo
	attr_accessor :username, :password

	def initialize
		@username = "Ironhack"
		@password = read_password
	end

	def hard_password
		"1234"
	end

	def read_password
		FileSystem.validate_password
	end

	def validation
		puts "What is your username? "
		username_input = gets.chomp
		puts "What is your password? "
		password_input = gets.chomp
		if username_input == @username && password_input == @password
			get_text
		else 
			puts "Incorrect password, try again"
			validation
		end
	end

	def get_text

		puts "Enter some text: "
		@user_text = gets.chomp
		option_list
	end
		

	def option_list
		puts "What do you want to do? "
		puts "1.Count words, 2.Count letters, 3.Reverse text, 4.Uppercase the 
		text, 5.Lowercase the text. (Just put the number)"
		user_choice = gets.chomp
		if user_choice == "1"
			count_words
		elsif user_choice == "2"
			count_letters
		elsif user_choice == "3"
			reverse_text
		elsif user_choice == "4"
			upper_case
		elsif user_choice == "5"
			down_case
		else puts "Choose a valid option between 1-5"
			option_list
		end

	end

	def count_words
		number_of_words = @user_text.split(' ').length
		puts "Your text contains #{number_of_words} words."
	end

	def count_letters
		number_of_letters =@user_text.split(" ").join.length
		puts "There are #{number_of_letters} letters" 
	end

	def reverse_text
		reversed_text = @user_text.reverse
		puts "#{reversed_text}"
	end

	def upper_case
		uppered_case = @user_text.upcase
		puts "#{uppered_case}"
	end

	def down_case
		downed_case = @user_text.downcase
		puts "#{downed_case}"
	end

end

user = UserInfo.new
user.validation
