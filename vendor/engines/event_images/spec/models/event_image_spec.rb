require 'spec_helper'

describe EventImage do

  def reset_event_image(options = {})
    @valid_attributes = {
      :id => 1,
      :data => "RSpec is great for testing too"
    }

    @event_image.destroy! if @event_image
    @event_image = EventImage.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_event_image
  end

  context "validations" do
    
    it "rejects empty data" do
      EventImage.new(@valid_attributes.merge(:data => "")).should_not be_valid
    end

    it "rejects non unique data" do
      # as one gets created before each spec by reset_event_image
      EventImage.new(@valid_attributes).should_not be_valid
    end
    
  end

end