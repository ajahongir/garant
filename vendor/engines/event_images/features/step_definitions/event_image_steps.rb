Given /^I have no event_images$/ do
  EventImage.delete_all
end

Given /^I (only )?have event_images titled "?([^\"]*)"?$/ do |only, titles|
  EventImage.delete_all if only
  titles.split(', ').each do |title|
    EventImage.create(:data => title)
  end
end

Then /^I should have ([0-9]+) event_images?$/ do |count|
  EventImage.count.should == count.to_i
end
