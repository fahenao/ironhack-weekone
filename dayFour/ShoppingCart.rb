module CashRegisterFunctions

		def total(shopping_cart)
			total = shopping_cart.reduce {|sum, x| sum + x.price}
			puts "Cost: #{total}$"
		end

		# def show_item_list(shopping_cart)
		# 	shopping_cart.each do |item|
		# 		puts "shopping_cart.item" 
		# end

end

class ShoppingCart

	attr_accessor :shopping_cart
	def initialize
		@shopping_cart = [ ]
	end

	def add_to_cart(item)
		@shopping_cart.push :item
	end
end

class Items
	attr_accessor :name, :price
	def intitialize(name, price)
		@name = :name
		@price = :price
	end
end



cart = ShoppingCart.new
apples = Items.new(:apples, 10)
banana = Items.new(:banana, 20)

cart.add_to_cart(banana)
cart.add_to_cart(apples)

puts cart.inspect

