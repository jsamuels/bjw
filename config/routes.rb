ActionController::Routing::Routes.draw do |map|
  map.resources :printers

  map.root :controller => "jobs", :action => "welcome"
  map.resources :readings
  map.resources :patches
  map.resources :jobs

end
