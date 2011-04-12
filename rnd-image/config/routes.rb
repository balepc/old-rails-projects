ActionController::Routing::Routes.draw do |map|
  map.resources :assets, :collection=>{:random=>:get}


  map.root :controller=>'Assets', :action=>'random'

  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
