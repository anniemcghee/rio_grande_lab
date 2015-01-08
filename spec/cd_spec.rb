require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    @cd = Cd.new("Hozier",9.99)
  end

  describe "Initialization of a new Cd" do
  	it "is an instance of the Cd class" do
  		expect(@cd).to be_instance_of(Cd)
  	end
  	it "has been assigned a name" do
  		expect(@cd.name).to eq("Hozier")
  	end
  	it "has been assigned a price" do
  		expect(@cd.price).to eq(9.99)
  	end
  end

  describe "Inheritance of Cd" do
  	it "is inheriting from the Item class" do
  		expect(Cd.superclass).to eq Item
  	end
  end

  describe "Accessors" do
  	it "should be able to get and set number of tracks" do
  		expect(@cd.tracks).to eq 0
  		@cd.tracks=10
  		expect(@cd.tracks).to eq(10)
  	end
  	it "should be able to get and set artist" do
  		expect(@cd.artist).to eq("")
  		@cd.artist="Claire Lyles"
  		expect(@cd.artist).to eq("Claire Lyles")
  	end
  	it "should be able to get and set run time" do
  		expect(@cd.run_time_in_minutes).to eq 0
  		@cd.run_time_in_minutes=60
  		expect(@cd.run_time_in_minutes).to eq(60)
  	end
  	it "should be able to get and set name" do
  		@cd.name="My Music"
  		expect(@cd.name).to eq("My Music")
  	end
  	it "should be able to get and set price" do
  		@cd.price=500.00
  		expect(@cd.price).to eq(500.00)
  	end
  end

  #check inilization
  #check that it is an extended from Item
  #check that it is an instance of Cd
  #check getters and setters

end