require_relative 'Item.rb'
class Book < Item

	attr_accessor :pages, :author

    def initialize name, price
        super(name,price)
        @author = ""
     	@pages = 0
    end
end