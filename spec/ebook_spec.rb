require_relative 'spec_helper'
require_relative '../lib/EBook'

describe Ebook do
	
	before(:context) do
		@ebook = Ebook.new("Pink",9.99,1)
	end

	describe "Initialization of Ebook" do
		it "is an instance of the Ebook class" do
			expect(@ebook).to be_instance_of(Ebook)
		end
		it "has been assigned a name" do
			expect(@ebook.name).to eq("Pink")
		end
		it "has been assigned a price" do
			expect(@ebook.price).to eq(9.99)
		end
		it "Has been assigned a quantity" do
			expect(@ebook.quantity).to eq(1)
		end
	end

	describe "Inheritance of Ebook" do
		it "is inheriting from DigitalItem" do
			expect(Ebook.superclass).to eq Digitalitem
		end
	end

	describe "Accessors" do
  	it "should be able to get and set number of pages" do
  		expect(@ebook.pages).to eq 0
  		@ebook.pages=400
  		expect(@ebook.pages).to eq(400)
  	end
  	it "should be able to get and set author" do
  		expect(@ebook.author).to eq("")
  		@ebook.author="Annie McGhee"
  		expect(@ebook.author).to eq("Annie McGhee")
  	end
  	it "should be able to get and set name" do
  		@ebook.name="My Book"
  		expect(@ebook.name).to eq("My Book")
  	end
  	it "should be able to get and set price" do
  		@ebook.price=55.99
  		expect(@ebook.price).to eq(55.99)
  	end
  	it "should be able to ONLY READ quantity" do
		expect(@ebook.quantity).to eq(1)
	end
  end
end