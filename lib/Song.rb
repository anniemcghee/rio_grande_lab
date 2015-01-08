require_relative 'DigitalItem.rb'

class Song < Digitalitem

	attr_accessor :run_time_in_minutes, :artist

	def initialize name,price,weight,quantity
		super(name,price,weight,quantity)
		@run_time_in_minutes = 0
		@artist = ""
	end
end