class Admin::CompaniesController < Admin::ApplicationController

  def index
    @companies = Company.order_by_name
  end

  def new
    @company = Company.new
    base_locale!
  end

  def create
    @company = Company.new(params[:company])
    if @company.save
      if save_go_back?
        redirect_to admin_companies_path
      else
        redirect_to edit_admin_company_path(@company)
      end
    else
      base_locale!
      render :action => 'new'
    end
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to admin_companies_path
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update_attributes(params[:company])
      if save_go_back?
        redirect_to admin_companies_path
      else
        redirect_to :action => 'edit', :id => @company.id
      end
    else
      render :action => 'edit'
    end
  end


end
