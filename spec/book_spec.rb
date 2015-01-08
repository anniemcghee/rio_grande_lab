require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    @book = Book.new("Great Gatsby",44.99)
  end

  describe "Initialization of Book" do
  	it "is an instance of the Book class" do
  		expect(@book).to be_instance_of(Book)
  	end
  	it "has been assigned a name" do
  		expect(@book.name).to eq("Great Gatsby")
  	end
  	it "has been assigned a price" do
  		expect(@book.price).to eq(44.99)
  	end
    it "has been assigned a weight" do
      expect(@book.weight).to eq(0)
    end
  end

  describe "Inheritance of Book" do
  	it "is inheriting from the Item class" do
  		expect(Book.superclass).to eq Item
  	end
  end

  describe "Accessors" do
  	it "should be able to get and set number of pages" do
  		expect(@book.pages).to eq 0
  		@book.pages=400
  		expect(@book.pages).to eq(400)
  	end
  	it "should be able to get and set author" do
  		expect(@book.author).to eq("")
  		@book.author="Annie McGhee"
  		expect(@book.author).to eq("Annie McGhee")
  	end
  	it "should be able to get and set name" do
  		@book.name="My Book"
  		expect(@book.name).to eq("My Book")
  	end
  	it "should be able to get and set price" do
  		@book.price=55.99
  		expect(@book.price).to eq(55.99)
  	end
    it "should be able to get and set weight" do
      @book.weight=90
      expect(@book.weight).to eq(90)
    end
  end

  #check inilization
  #check that it is an extended from Item
  #check that it is an instance of Book
  #check getters and setters

end