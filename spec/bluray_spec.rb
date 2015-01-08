require_relative 'spec_helper'
require_relative '../lib/Bluray'


describe Bluray do

  before(:context) do
    @bluray = Bluray.new("Blake",42.99,0)
  end

  describe "Initialization of a new Bluray" do
  	it "is an instance of the Bluray class" do
  		expect(@bluray).to be_instance_of(Bluray)
  	end
  	it "has been assigned a name" do
  		expect(@bluray.name).to eq("Blake")
  	end
  	it "has been assigned a price" do
  		expect(@bluray.price).to eq(42.99)
  	end
    it "has been assigned a weight" do
      expect(@bluray.weight).to eq(0)
    end
  end

  describe "Inheritance of Bluray" do
  	it "should be inheriting from the Item class" do
  		expect(Bluray.superclass).to eq Item
  	end
  end

  describe "Accessors" do
  	it "should be able to get and set the name" do
  		@bluray.name="Annie"
  		expect(@bluray.name).to eq("Annie")
  	end
  	it "should be able to get and set price" do
  		@bluray.price=60.00
  		expect(@bluray.price).to eq(60.00)
  	end
  	it "should be able to get and set run time" do
  		expect(@bluray.run_time_in_minutes).to eq 0
  		@bluray.run_time_in_minutes=60
  		expect(@bluray.run_time_in_minutes).to eq(60)
  	end
  	it "should be able to get and set the director" do
  		expect(@bluray.director).to eq("")
  		@bluray.director="Claire"
  		expect(@bluray.director).to eq("Claire")
  	end
  	it "should be able to get and set the producer" do
  		expect(@bluray.producer).to eq("")
  		@bluray.producer="Nick"
  		expect(@bluray.producer).to eq("Nick")
  	end
    it "should be able to get and set the weight" do
      expect(@bluray.weight).to eq(0)
      @bluray.weight=90
      expect(@bluray.weight).to eq(90)
    end
  end

  #check inilization
  #check that it is an extended from Item
  #check that it is an instance of Bluray
  #check getters and setters

end