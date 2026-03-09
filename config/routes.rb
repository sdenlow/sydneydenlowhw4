Rails.application.routes.draw do
  root to: "places#index"

  resources "entries"
  resources "places"
  resources "users"
  resources "sessions"

  get("/login", { :controller => "sessions", :action => "new" })
  get("/logout", { :controller => "sessions", :action => "destroy" })
end
