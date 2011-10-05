Given /^I have no flats$/ do
  Flat.delete_all
end


Then /^I should have ([0-9]+) flats?$/ do |count|
  Flat.count.should == count.to_i
end
