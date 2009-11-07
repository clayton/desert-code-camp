# Factory Girl Factories and Sequences

Factory.sequence(:email) do |number|
  "user-#{(number.to_f + Time.now.to_f)}@example.org"
end

Factory.define :user do |user|
  user.email { Factory.next(:email) }
  user.name ""
  user.bio ""
  user.website ""
  user.password "password"
  user.password_confirmation "password"
end