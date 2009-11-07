Given /^the following sessions:$/ do |table|
  table.each do |presentations|
    presentations[:presenter].conference_sessions << presentations[:conference_session]
    presentations[:presenter].save
  end
end

Then /^I should see that "([^\"]*)" is presenting "([^\"]*)" on "([^\"]*)"$/ do |name, title, date|
  response.should have_selector("h2", :content => title)
  response.should have_selector("p.byline", :content => name)
  response.should have_selector("p.date", :content => date)
end

Then /^I should not see that "([^\"]*)" is presenting "([^\"]*)" on "([^\"]*)"$/ do |name, title, date|
  response.should_not have_selector("h2", :content => title)
  response.should_not have_selector("p.byline", :content => name)
  response.should_not have_selector("p.date", :content => date)
end

Transform /^table:Presenter,Title,Start Time,Approval Status$/ do |table|
  table.hashes.map do |hash|
    presenter = Factory.create(:user, {:name => hash[:Presenter]})
    session = Factory.create(:conference_session, {:title => hash[:Title], 
                                        :start_time => hash["Start Time"], 
                                        :approved => hash["Approval Status"]
                                       })
    {:presenter => presenter, :conference_session => session}
  end
end