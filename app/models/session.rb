class Session < ActiveRecord::Base
  belongs_to :user

  named_scope :approved, :conditions => "approved = 1"
end
