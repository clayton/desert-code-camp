class User < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :email, :password, :password_confirmation, :name, :bio, :website
end
