class Admin::CurrenciesController < Admin::ApplicationController

  def index
    @currencies = Currency.order_by_name
  end

  def new
    @currency = Currency.new
  end

  def create
    @currency = Currency.new(params[:currency])
    if @currency.save
      if save_go_back?
        redirect_to admin_currencies_path
      else
        redirect_to edit_admin_currency_path(@currency)
      end
    else
      render :action => 'new'
    end
  end

  def destroy
    @currency = Currency.find(params[:id])
    @currency.destroy
    redirect_to admin_currencies_path
  end

  def edit
    @currency = Currency.find(params[:id])
  end

  def update
    @currency = Currency.find(params[:id])
    if @currency.update_attributes(params[:currency])
      if save_go_back?
        redirect_to admin_currencies_path
      else
        redirect_to :action => 'edit', :id => @currency.id
      end
    else
      render :action => 'edit'
    end
  end

end
