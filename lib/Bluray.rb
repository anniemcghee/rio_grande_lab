require_relative 'Item.rb'
class Bluray < Item

	attr_accessor :producer, :director, :run_time_in_minutes

	def initialize name,price,weight
		super(name,price,weight)
		@producer = ""
		@director = ""
		@run_time_in_minutes = 0
	end
end