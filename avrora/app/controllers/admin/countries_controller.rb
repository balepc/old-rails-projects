class Admin::CountriesController < Admin::ApplicationController

  def index
    @countries = Country.order_by_name
  end

  def new
    @country = Country.new
    base_locale!
  end

  def create
    @country = Country.new(params[:country])
    if @country.save
      if save_go_back?
        redirect_to admin_countries_path
      else
        redirect_to edit_admin_country_path(@country)
      end
    else
      base_locale!
      render :action => 'new'
    end
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
    redirect_to admin_countries_path
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])
    if @country.update_attributes(params[:country])
      if save_go_back?
        redirect_to admin_countries_path
      else
        redirect_to :action => 'edit', :id => @country.id
      end
    else
      render :action => 'edit'
    end
  end

end
