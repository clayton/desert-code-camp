Then /^I fill out the registration form$/ do
  Given "I fill in \"E-Mail\" with \"clayton@integrumtech.com\""
  Given "I fill in \"Name\" with \"Clayton\""
  Given "I fill in \"Bio\" with \"Rails developer @integrum\""
  Given "I fill in \"Website\" with \"http://claytonlz.com\""
  Given "I fill in \"Password\" with \"bdd000cucumber\""
  Given "I fill in \"Password Confirmation\" with \"bdd000cucumber\""
end

Then /^the presentation "([^\"]*)" should have "([^\"]*)" attendee$/ do |presentation_name, count|
  ConferenceSession.find_by_title(presentation_name).registrations.size.should == count.to_i
end
