class SearchController < ApplicationController
  def index
    render
  end
  
  def results
    @results = ThinkingSphinx.search params[:query], 
                                     :per_page => 20, 
                                     :page => params[:page]
  end
end
