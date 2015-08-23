module CashRegisterFunctions

	class Functions
		attr_accessor:shopping_cart
		def total(shopping_cart)
			total = shopping_cart.reduce {|sum, x| sum + x.price}
			puts "Cost: #{total}$"
		end

		# def show_item_list(shopping_cart)
		# 	shopping_cart.each do |item|
		# 		puts "shopping_cart.item" 
		# end
	end
end