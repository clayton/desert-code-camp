class ConferenceSession < ActiveRecord::Base
  belongs_to :user
  has_many :registrations

  named_scope :approved, :conditions => "approved = 1"
  
  define_index do
    indexes :title
    indexes :abstract
    indexes user(:name), :as => :speaker
    
    has :start_time
    has :approved
    has :user_id
  end
  
  def search_title
    title
  end
  
  def search_snippet
    abstract
  end
end
