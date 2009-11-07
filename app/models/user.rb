class User < ActiveRecord::Base
  acts_as_authentic
  has_many :conference_sessions
  attr_accessible :email, :password, :password_confirmation, :name, :bio, :website
end
