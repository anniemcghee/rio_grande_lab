require_relative 'Item.rb'
class Bluray < Item

	attr_accessor :producer, :director, :run_time_in_minutes

	def initialize name,price
		super(name,price)
		@producer = ""
		@director = ""
		@run_time_in_minutes = 0
	end
end