# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

50.times do |n|
  name = Faker::Name.name
  user = User.create(
    :password => "password",
    :password_confirmation => "password",
    :name => name,
    :website => Faker::Internet.domain_name,
    :bio => "#{name} works for #{Faker::Company.name}. #{Faker::Company.bs}.",
    :email => Faker::Internet.free_email
  )
  
  if n % 5
    start_times = [
                   Date.parse("2010-11-13 9:00:00"), 
                   Date.parse("2010-11-13 10:15:00"),
                   Date.parse("2010-11-13 13:15:00"),
                   Date.parse("2010-11-13 15:15:00")
                  ]
    
    user.conference_sessions.create(
      :start_time => start_times.rand,
      :title => Faker::Company.catch_phrase ,
      :abstract => Faker::Company.bs,
      :approved => true
    )
  end
end