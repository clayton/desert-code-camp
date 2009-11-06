# Factory Girl Factories and Sequences

Factory.sequence(:email) do |number|
  "user-#{number}@example.org"
end

Factory.define :user do |user|
  user.email Factory.next(:email)
  user.password "password"
  user.password_confirmation "password"
  user.single_access_token "k3cFzLIQnZ4MHRmJvJzg"
end