# You are on your own... good luck.

# Oh no the future is here!! Now we need to support digital items. Digital items are things that are downloaded and therefore they do not have a finite quantity.

# * DigitalItem < Item
#     * Quantity should always be 1
#     * Quantity does not decrease when sold
#     * Quantity should not increase on stock

require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe Digitalitem do

	before :context do
		@digital_item = Digitalitem.new("Song",0.99,1)
	end

	describe "Initialization of a new Digital Item " do
		it "is an instance of the Digital Item class" do
			expect(@digital_item).to be_instance_of(Digitalitem)
		end
		it "has been assigned a name" do
			expect(@digital_item.name).to eq("Song")
		end
		it "Has been assigned a price" do
			expect(@digital_item.price).to eq(0.99)
		end
		it "Has been assigned a quantity" do
			expect(@digital_item.quantity).to eq(1)
		end
	end

	describe "Inheritance of Digital Item" do
		it "should be inheriting from the Item class" do
			expect(Digitalitem.superclass).to eq Item
		end
	end

	describe "Accessors" do
		it "should be able to get and set the name" do
			@digital_item.name="Beyonce"
			expect(@digital_item.name).to eq("Beyonce")
		end
		it "should be able to get and set the price" do
			@digital_item.price=9.99
			expect(@digital_item.price).to eq(9.99)
		end
		it "should be able to ONLY READ quantity" do
			expect(@digital_item.quantity).to eq(1)
		end
	end

	describe "Methods" do
		it "should be able to return a digital item without changing quantity" do
			result = @digital_item.return 5
      		expect(result).to eq(true)
      		expect(@digital_item.quantity).to eq(1)
      	end
    end 

end