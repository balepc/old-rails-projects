class Admin::PriceListsController < Admin::ApplicationController

  def index
    @pricelists = PriceList.all
  end

  def new
    @pricelist = PriceList.new
    base_locale!
  end

  def create
    @pricelist = PriceList.new(params[:price_list])
    if @pricelist.save
      redirect_to admin_price_lists_path
    else
      base_locale!
      render :action => 'new'
    end
  end

  def destroy
    @pricelist = PriceList.find(params[:id])
    @pricelist.destroy
    redirect_to admin_price_lists_path
  end

end