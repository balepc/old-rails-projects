ActionController::Routing::Routes.draw do |map|
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.remind '/remind', :controller => 'users', :action => 'password_reminder'
  
  map.resources :users, :collection => {:remind => :post}

  map.resource :session
  
  map.namespace :admin do |admin|
    admin.root :controller => 'dashboard', :action => 'show'
    admin.resource :dashboard
    admin.resources :tags
    admin.resources :items do |items|
      items.resources :tree_nodes, :controller => 'ItemTreeNodes'
    end
    admin.resources :assets, :member => {:set_default => :post}
    admin.resource :statistics, :collection => {:items => :get, :selection => :get}
    admin.resources :holidays, :member => {:remove_image => :get}
    admin.resources :options
    admin.resources :users
    admin.resources :virtual_users
    admin.resource :questions_tree, :controller => 'QuestionsTree'
  end
  
  
  map.resources :memos, :member => {:change_type => :post}, :collection => {:persons => :get} do |memos|
    memos.resources :options
  end
  
  map.resource  :dashboard, :collection => {:start => :get, :reset => :get}, :controller => 'Dashboard'
  map.resources :items, :member => {:select => :post}, :collection => {:other => :get, :favorite => :get}
  
  map.resources :events, :collection => {:next => :get, :previous => :get}
  map.resources :holidays
  map.resources :favorites
  
  map.root :controller => "Dashboard", :action => 'show'
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
