class PagesController < ApplicationController
  
  def contacts
    render :action => 'contacts'
  end
  
  def about
    render :action => 'about'
  end
  
end
