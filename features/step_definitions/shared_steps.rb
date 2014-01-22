# I am at the page
Given /^I visit the (.+) page$/ do |name|
  url = url_for name.downcase.split.map(&:to_sym)
  visit url
end

Then /^I am at the (.+) page$/ do |name|
  url = url_for name.downcase.split.map(&:to_sym)
  current_url.should == url
  #visit url
end

# Model existance
# Then /^a (.+) should exist$/ do |model_name|
#   model_name.classify.constantize.first.should_not be_nil
# end
