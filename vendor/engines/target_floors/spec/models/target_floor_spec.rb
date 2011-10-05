require 'spec_helper'

describe TargetFloor do

  def reset_target_floor(options = {})
    @valid_attributes = {
      :id => 1,
      :data => "RSpec is great for testing too"
    }

    @target_floor.destroy! if @target_floor
    @target_floor = TargetFloor.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_target_floor
  end

  context "validations" do
    
    it "rejects empty data" do
      TargetFloor.new(@valid_attributes.merge(:data => "")).should_not be_valid
    end

    it "rejects non unique data" do
      # as one gets created before each spec by reset_target_floor
      TargetFloor.new(@valid_attributes).should_not be_valid
    end
    
  end

end