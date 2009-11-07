Given /^the following sessions:$/ do |table|
  table.each do |presentations|
    presentations[:presenter].sessions << presentations[:session]
    presentations[:presenter].save
  end
end

Then /^I should see that "([^\"]*)" is presenting "([^\"]*)" on "([^\"]*)"$/ do |name, title, date|
  response.should have_selector("h2", title)
  response.should have_selector("p.byline", name)
  response.should have_selector("p.date", date)
end

Then /^I should not see that "([^\"]*)" is presenting "([^\"]*)" on "([^\"]*)"$/ do |name, title, date|
  pending
end

Transform /^table:Presenter,Title,Start Time,Approval Status$/ do |table|
  table.hashes.map do |hash|
    presenter = Factory.create(:user, {:name => hash[:Presenter]})
    session = Factory.create(:session, {:title => hash[:Title], 
                                        :start_time => hash["Start Time"], 
                                        :approved => hash["Approval Status"]
                                       })
    {:presenter => presenter, :session => session}
  end
end