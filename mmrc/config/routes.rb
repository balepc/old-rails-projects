ActionController::Routing::Routes.draw do |map|

  # RESTfull auth
  map.logout      '/logout',    :controller => 'sessions', :action => 'destroy'
  map.login       '/login',     :controller => 'sessions', :action => 'new'
  map.register    '/register',  :controller => 'users', :action => 'create'
  map.signup      '/signup',    :controller => 'users', :action => 'new'

  map.resources   :users
  map.resource    :session

  map.home        "/",          :controller => 'Dashboard', :action => 'show'
  map.resource    :dashboard,   :controller => 'Dashboard'



  map.resources   :vessels,     :collection => {:autocomplete => :get}
  map.resources   :ports

  map.resources   :reports,     :collection => {:vessel => :get, :save_vessel => :post},
    :member    => {
      :view_vessel => :get,
      :edit_vessel => :get, :update_vessel => :put,
      :voyage_information => :get, :save_voyage_information => :put,
      :isps_validity => :get, :save_isps_validity => :put,
      :previous_ports => :get, :save_previous_ports => :put,
      :ship_interfaces => :get, :save_ship_interfaces => :put,
      :passenger_list => :get, :save_passenger_list => :put,
      :crew_list => :get, :save_crew_list => :put,
      :security_info => :get, :save_security_info => :put,
      :confirm => :get, :save_confirm => :put
  }

 
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end