require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  
  before {
    	@valid_attrs1 = { plate: "ABC111", color: "Blue", year: 1995 }
    	@valid_attrs2 = { plate: "DFG222", color: "Orange", year: 2000 }
    	@invalid_attrs2 = { plate: "", color: "Green", year: 1964 }
    	@invalid_attrs = { plate: "POI987", color: "white", year: 2016 }
	}

	context "model validations" do	    

	    it "is an invalid vehicle due to plate" do
	      vehicle = Vehicle.new @invalid_attrs
	      vehicle.valid?.should eq(false)
	      vehicle.errors[:plate].size.should > 0
	    end

	    it "is a valid vehicle" do
	      vehicle = Vehicle.new @valid_attrs1
	      vehicle.valid?.should eq(true)
	    end

	    it "is a valid category 1 vehicle " do
	      vehicle = Vehicle.create @valid_attrs1
	      vehicle.valid?.should eq(true)
	      vehicle.category.should eq(1)
	    end

	    it "is a valid category 2 vehicle" do
	      vehicle = Vehicle.create @valid_attrs2
	      vehicle.valid?.should eq(true)
	      vehicle.category.should eq(2)
	    end 

	    it "is an invalid vehicle due to lack of attributes" do
	      vehicle = Vehicle.create @invalid_attrs2
	      vehicle.valid?.should eq(false)
	      vehicle.errors[:plate].size.should > 0
	    end 

    
	end
end
