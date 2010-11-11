class User < ActiveRecord::Base
  acts_as_authentic
  has_many :conference_sessions
  attr_accessible :email, :password, :password_confirmation, :name, :bio, :website
  
  define_index do
    indexes email
    indexes name
    indexes bio
    indexes website
  end
  
  def search_title
    "#{name} - #{email}"
  end
  
  def search_snippet
    bio
  end
end
