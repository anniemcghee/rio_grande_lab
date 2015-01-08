require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do
	
	before(:context) do
		@movie = Movie.new("Anil",40.00,1)
	end

	describe "Initialization of Movie" do
		it "is an instance of the Movie class" do
			expect(@movie).to be_instance_of(Movie)
		end
		it "has been assigned a name" do
			expect(@movie.name).to eq("Anil")
		end
		it "has been assigned a price" do
			expect(@movie.price).to eq(40.00)
		end
		it "Has been assigned a quantity" do
			expect(@movie.quantity).to eq(1)
		end
	end

	describe "Inheritance of Movie" do
		it "is inheriting from DigitalItem" do
			expect(Movie.superclass).to eq Digitalitem
		end
	end

	describe "Accessors" do
  	it "should be able to get and set number of pages" do
  		expect(@movie.run_time_in_minutes).to eq 0
  		@movie.run_time_in_minutes=400
  		expect(@movie.run_time_in_minutes).to eq(400)
  	end
  	it "should be able to get and set director" do
  		expect(@movie.director).to eq("")
  		@movie.director="Annie McGhee"
  		expect(@movie.director).to eq("Annie McGhee")
  	end
  	it "should be able to get and set producer" do
  		expect(@movie.producer).to eq("")
  		@movie.producer="Annie McGhee"
  		expect(@movie.producer).to eq("Annie McGhee")
  	end
  	it "should be able to get and set name" do
  		@movie.name="My Book"
  		expect(@movie.name).to eq("My Book")
  	end
  	it "should be able to get and set price" do
  		@movie.price=55.99
  		expect(@movie.price).to eq(55.99)
  	end
  	it "should be able to ONLY READ quantity" do
		expect(@movie.quantity).to eq(1)
	end
  end

end