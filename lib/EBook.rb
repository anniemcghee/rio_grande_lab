require_relative 'DigitalItem.rb'

class Ebook < Digitalitem

	attr_accessor :author, :pages

	def initialize name,price
		super(name,price)
		@author = ""
		@pages = 0
	end

end