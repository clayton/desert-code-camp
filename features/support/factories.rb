# Factory Girl Factories and Sequences

Factory.sequence(:email) do |number|
  "user-#{number}@example.org"
end

Factory.define :user do |user|
  user.email { Factory.next(:email) }
  user.name "John Doe"
  user.bio "Some Guy"
  user.website "http://example.org"
  user.password "password"
  user.password_confirmation "password"
end

Factory.define :conference_session do |session|
  session.title "Example Session Title"
  session.abstract "Examble Session Abstract"
  session.start_time Time.now
  session.approved true
end