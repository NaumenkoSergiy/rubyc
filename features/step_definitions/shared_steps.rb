# I am at the page
Given /^I am at the (.+) page$/ do |name|
  url = url_for name.downcase.split.map(&:to_sym)
  visit url
end

# Model existance
Then /^a (.+) should exist$/ do |model_name|
  model_name.classify.constantize.first.should_not be_nil
end
