ActionController::Routing::Routes.draw do |map|
  
  #..............Admin.........................
  map.namespace :admin do |admin|
    admin.resource :session

    admin.map '/logout', :controller => 'Sessions', :action => 'destroy'
    admin.map '/', :controller => 'Categories', :action => 'index'

    admin.resources :view_translations, :collection => {:apply=>:post}

    admin.resources :currencies
    admin.resources :document_types
    admin.resources :categories
    admin.resources :items, :collection=>{:complectation=>:get, :accessories=>:get}, :member=>{:clone=>:get}
    admin.resources :images
    admin.resources :attributes
    admin.resources :standards
    admin.resources :pages
    admin.resources :random_images
    admin.resources :companies
    admin.resources :countries
    admin.resources :documents
    admin.resources :price_lists
    admin.resources :users
  end
  
  # The priority is based upon order of creation: first created -> highest priority.
  
  #map.resources :users
  map.resource :session
  
  map.resource :content, :controller => 'Content'
  map.resources :pricelists, :controller => 'PriceList', :member => {:generate => :get, :download=>:get}, :collection => {:xml=>:get, :documents=>:get}
  
  map.connect 'contacts', :controller=>'Pages', :action=>'contacts'
  map.connect 'about', :controller=>'Pages', :action=>'about'

  map.connect 'login', :controller=>"Sessions", :action=>'new'
  map.connect 'logout', :controller=>"Sessions", :action=>'destroy'

  
  map.resources :categories do |category|
    category.resources :items
  end
  map.resources :companies, :has_many => :categories

  map.resources :items
  map.resources :documents, :member=>{:download=>:get}

  map.resource :search, :controller=>"Search"
  
  map.root :controller=>'Content', :action=>'show'
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
