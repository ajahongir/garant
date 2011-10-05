require 'spec_helper'

describe Target do

  def reset_target(options = {})
    @valid_attributes = {
      :id => 1,
      :name => "RSpec is great for testing too"
    }

    @target.destroy! if @target
    @target = Target.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_target
  end

  context "validations" do
    
    it "rejects empty name" do
      Target.new(@valid_attributes.merge(:name => "")).should_not be_valid
    end

    it "rejects non unique name" do
      # as one gets created before each spec by reset_target
      Target.new(@valid_attributes).should_not be_valid
    end
    
  end

end