Given /^I have no target_floors$/ do
  TargetFloor.delete_all
end

Given /^I (only )?have target_floors titled "?([^\"]*)"?$/ do |only, titles|
  TargetFloor.delete_all if only
  titles.split(', ').each do |title|
    TargetFloor.create(:data => title)
  end
end

Then /^I should have ([0-9]+) target_floors?$/ do |count|
  TargetFloor.count.should == count.to_i
end
