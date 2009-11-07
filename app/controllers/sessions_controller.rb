class SessionsController < ApplicationController
  def index
    @sessions = Session.approved(:order => "start_time DESC")
  end

  def show
  end

end
