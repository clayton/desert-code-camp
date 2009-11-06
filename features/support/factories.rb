# Factory Girl Factories and Sequences
require 'digest/md5'

Factory.sequence(:email) do |number|
  "user-#{(number.to_f + Time.now.to_f)}@example.org"
end

Factory.sequence(:single_access_token) do |token|
  Digest::MD5.hexdigest("#{token}-single_access_token-#{Time.now.to_f}")
end

Factory.define :user do |user|
  user.email { Factory.next(:email) }
  user.name ""
  user.bio ""
  user.website ""
  user.password "password"
  user.password_confirmation "password"
  user.single_access_token { Factory.next(:single_access_token) }
end