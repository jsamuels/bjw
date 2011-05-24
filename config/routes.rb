ActionController::Routing::Routes.draw do |map|
  map.root :controller => "jobs", :action => "welcome"
  map.resources :readings
  map.resources :patches
  map.resources :jobs
  map.resources :tolerances
  map.resources :printers
end
