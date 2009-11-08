class ConferenceSessionsController < ApplicationController

  before_filter :require_user, :only => [:new, :create]

  def index
    @sessions = ConferenceSession.approved(:order => "start_time DESC")
  end

  def show
  end

  def new
    @conference_session = ConferenceSession.new
  end

  def create
    @conference_session = @current_user.conference_sessions.build(params[:conference_session])
    if @conference_session.save
      @conference_session.update_attribute(:approved, true)
      flash[:notice] = "Your presentation has been created"
      redirect_to root_url
    else
      render :action => "new"
    end
  end

  def edit
    @conference_session = ConferenceSession.find(params[:id])
  end

  def update
    @conference_session = ConferenceSession.find(params[:id])

    if @conference_session.update_attributes(params[:conference_session])
      flash[:notice] = "Your presentation has been updated"
      redirect_to root_url
    else
      render :action => "edit"
    end
  end

end
