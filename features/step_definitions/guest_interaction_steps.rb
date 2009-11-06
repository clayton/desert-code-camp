Given /^I am a guest$/ do
  # Nothing for now
end

Then /^I should see a link to "([^\"]*)"$/ do |href|
  # Rspec Matchers
  response.should have_selector("a", :href => href)
end
