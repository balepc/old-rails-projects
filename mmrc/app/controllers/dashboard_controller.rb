class DashboardController < ApplicationController
  before_filter :login_required

  def show
    @reports = Report.all
  end
  
end