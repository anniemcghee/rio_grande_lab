require_relative 'DigitalItem.rb'

class Ebook < Digitalitem

	attr_accessor :author, :pages

	def initialize name,price,weight,quantity
		super(name,price,weight,quantity)
		@author = ""
		@pages = 0
	end

end