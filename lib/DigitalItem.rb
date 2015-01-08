require_relative 'Item.rb'

class Digitalitem < Item

	attr_reader :quantity, :weight, :download_size

	def initialize name,price, download_size=0
		super(name,price)
		@quantity = 1
		@weight = -1
		@quantity = 1
		@download_size=download_size
	end

	def stock amount
		false
	end

	def sell amount
		true
	end

	def return amount
		@quantity = 1
		true
	end

end