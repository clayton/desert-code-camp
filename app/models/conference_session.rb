class ConferenceSession < ActiveRecord::Base
  belongs_to :user
  has_many :registrations

  named_scope :approved, :conditions => "approved = 1"
end
