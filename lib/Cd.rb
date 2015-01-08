require_relative 'Item.rb'
class Cd < Item

	attr_accessor :artist, :tracks, :run_time_in_minutes

	def initialize name,price,weight
		super(name,price,weight)
		@artist = ""
		@tracks = 0
		@run_time_in_minutes = 0
	end
end