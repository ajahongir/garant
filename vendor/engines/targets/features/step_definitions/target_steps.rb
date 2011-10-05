Given /^I have no targets$/ do
  Target.delete_all
end

Given /^I (only )?have targets titled "?([^\"]*)"?$/ do |only, titles|
  Target.delete_all if only
  titles.split(', ').each do |title|
    Target.create(:name => title)
  end
end

Then /^I should have ([0-9]+) targets?$/ do |count|
  Target.count.should == count.to_i
end
