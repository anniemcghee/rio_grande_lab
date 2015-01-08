require_relative 'DigitalItem.rb'

class Movie < Digitalitem

	attr_accessor :run_time_in_minutes, :director, :producer

	def initialize name,price,weight,quantity
		super(name,price,weight,quantity)
		@run_time_in_minutes = 0
		@director = ""
		@producer = ""
	end

end