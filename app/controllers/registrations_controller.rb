class RegistrationsController < ApplicationController
  before_filter :require_user
  before_filter :load_session

  def new
    render
  end

  def create
    @registration = Registration.new(:conference_session => @session, :user => current_user)
    if @registration.save
      flash[:notice] = "You've been signed up for #{@session.title}"
      redirect_to root_url
    else
      flash[:error] = "Couldn't sign you up for #{@session.title}"
      redirect_to root_url
    end
  end

  def load_session
    @session = ConferenceSession.find(params[:session_id])
  end

end
