require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do
	
	before(:context) do
		@song = Song.new("Love",1.99)
	end

	describe "Initialization of Song" do
		it "is an instance of the Song class" do
			expect(@song).to be_instance_of(Song)
		end
		it "has been assigned a name" do
			expect(@song.name).to eq("Love")
		end
		it "has been assigned a price" do
			expect(@song.price).to eq(1.99)
		end
		it "Has been assigned a weight" do
			expect(@song.weight).to eq(-1)
		end
		it "Has been assigned a quantity" do
			expect(@song.quantity).to eq(1)
		end
	end

	describe "Inheritance of Song" do
		it "is inheriting from DigitalItem" do
			expect(Song.superclass).to eq Digitalitem
		end
	end

	describe "Accessors" do
  	it "should be able to get and set run time" do
  		expect(@song.run_time_in_minutes).to eq 0
  		@song.run_time_in_minutes=400
  		expect(@song.run_time_in_minutes).to eq(400)
  	end
  	it "should be able to get and set director" do
  		expect(@song.artist).to eq("")
  		@song.artist="Annie McGhee"
  		expect(@song.artist).to eq("Annie McGhee")
  	end
  	it "should be able to get and set name" do
  		@song.name="My Song"
  		expect(@song.name).to eq("My Song")
  	end
  	it "should be able to get and set price" do
  		@song.price=55.99
  		expect(@song.price).to eq(55.99)
  	end
  	it "should be able to ONLY READ quantity" do
		expect(@song.quantity).to eq(1)
	end
	it "should be able to ONLY READ weight" do
		expect(@song.weight).to eq(-1)
	end
  end

end