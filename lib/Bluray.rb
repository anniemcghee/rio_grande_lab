require_relative 'Item.rb'
class Bluray < Item

	attr_accessor :producer, :director, :run_time_in_minutes

	def initialize name,price,weight=0
		super(name,price,weight)
		@producer = ""
		@director = ""
		@run_time_in_minutes = 0
	end
end