# You are on your own... good luck.
# * EBook < DigitalItem
#     * Pages
#     * Author

require_relative 'DigitalItem.rb'

class Ebook < Digitalitem

	attr_accessor :author, :pages

	def initialize name,price,quantity
		super(name,price,quantity)
		@author = ""
		@pages = 0
	end

end