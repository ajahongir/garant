require 'spec_helper'

describe Flat do

  def reset_flat(options = {})
    @valid_attributes = {
      :id => 1
    }

    @flat.destroy! if @flat
    @flat = Flat.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_flat
  end

  context "validations" do
    
  end

end