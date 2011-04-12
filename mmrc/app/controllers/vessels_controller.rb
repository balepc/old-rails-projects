class VesselsController < ApplicationController

  def new
    @vessel = Vessel.new
    @vessel.owner = Possesor.new
    @vessel.manager = Possesor.new
  end

  def create
    @vessel = Vessel.new(params[:vessel])
    if @vessel.save
      redirect_to dashboard_path
    else
      render :action=>'new'
    end
  end

  def index
    @vessels = Vessel.paginate :page=>params[:page], :per_page => 30
  end

#  def autocomplete
#    vessels = Vessel.find(:all, :select=>"ship_name, imon", :conditions=>["imon LIKE ? OR ship_name LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%"]).collect{|v|  {:name=>v.ship_name.strip, :imon=>v.imon} }
#    render :text=>vessels.to_json
#  end

end
