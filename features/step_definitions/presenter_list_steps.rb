# 
# When no Transformation is present, the table headers
# must match the actual model attributes (table columns)
#
# Given /^the following presenters:$/ do |table|
#   table.hashes.each do |attrs|
#     Factory.create(:user, attrs)
#   end
# end

#
# A more elegant way to do the above. Allows you to have
# more descriptive, less technical table headers in your
# scenarios
#

Given /^the following presenters:$/ do |table|
  table.each do |attrs|
    Factory.create(:user, attrs)
  end
end


Transform /^table:Name,Bio,Website$/ do |table|
  table.hashes.map do |hash|
    {:name => hash[:Name], :bio => hash[:Bio], :website => hash[:Website]}
  end
end