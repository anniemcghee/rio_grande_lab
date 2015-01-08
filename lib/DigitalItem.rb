require_relative 'Item.rb'

class Digitalitem < Item

	attr_reader :quantity, :weight

	def initialize name,price,weight,quantity
		super(name,price,weight)
		@quantity = 1
		@weight = -1
	end

	def return amount
		@quantity = 1
		true
	end

end