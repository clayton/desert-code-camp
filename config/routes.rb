ActionController::Routing::Routes.draw do |map|
  map.resource :account, :controller => "users"
  map.resources :users
  map.resource :user_session
  map.login "/login", :controller => "user_sessions", :action => "new"
  map.logout "/logout", :controller => "user_sessions", :action => "destroy"
  map.search "/search", :controller => "search"
  map.run_search "/search/results", :controller => "search", :action => "results"

  map.resources :conference_sessions
  map.resources :registrations

  map.root :controller => "pages"
end
