# You are on your own... good luck.

# Oh no the future is here!! Now we need to support digital items. Digital items are things that are downloaded and therefore they do not have a finite quantity.

# * DigitalItem < Item
#     * Quantity should always be 1
#     * Quantity does not decrease when sold
#     * Quantity should not increase on stock

require_relative 'Item.rb'

class Digitalitem < Item

	attr_reader :quantity

	def initialize name,price,quantity
		super(name,price)
		@quantity = 1
	end

	def return amount
		@quantity = 1
		true
	end

end