Given /^I am a logged in user$/ do
  Factory.create(:user, {:email => "clayton@example.org",
                         :password => "foobar",
                         :password_confirmation => "foobar"})
  Given "I am on the homepage"
  Given "I follow \"Login\""
  Given "I fill in \"Email\" with \"clayton@example.org\""
  Given "I fill in \"Password\" with \"foobar\""
  Given "I press \"Login\""
end

Given /^I am a logged in user presenting:$/ do |table|
  Given "I am a logged in user"
  table.each do |conference_session|
    conference_session.update_attribute(:user_id, User.first.id)
  end
end

Transform /^table:Title,Abstract,Approved$/ do |table|
  table.hashes.map do |hash|
    Factory.create(:conference_session, {:title => hash["Title"], :approved => hash["Approved"] })
  end
end
