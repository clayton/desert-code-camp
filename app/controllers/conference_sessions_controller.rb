class ConferenceSessionsController < ApplicationController
  def index
    @sessions = ConferenceSession.approved(:order => "start_time DESC")
  end

  def show
  end

end
