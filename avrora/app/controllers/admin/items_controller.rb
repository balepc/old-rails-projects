class Admin::ItemsController < Admin::ApplicationController

  before_filter :init_groups
  
  def index
    @items = apply_filter(Item).paginate :order=>"`items`.created_at DESC, category_id, model", :per_page=>30, :page=>params[:page], :include=>[:category, :country, :company]
  end
  
  def new
    @item = Item.new
    base_locale!
  end
  
  def create
    @item = Item.new(params[:item])
    
    if @item.save
      if save_go_back?
        redirect_to admin_items_path
      else
        redirect_to edit_admin_item_path(@item)
      end
    else
      base_locale!
      render :action => 'new'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to admin_items_path
  end
  
  def edit
    @item = Item.find(params[:id], :include=>[:standards])
  end
  
  def update
    params[:item][:selected_items]            ||= []
    params[:item][:selected_accessories]      ||= []
    params[:item][:existing_document_fields]  ||= {}

    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      if save_go_back?
        redirect_to admin_items_path
      else
        redirect_to :action => 'edit', :id => @item.id
      end
    else
      render :action => 'edit'
    end
  end

  def complectation
    q = "%#{params[:q]}%"
    items = Item.non_accessory.find(:all, :conditions=>["(code LIKE ?) OR (model LIKE ?) OR (article LIKE ?) OR (shortdesc LIKE ?)", q, q,q,q])
    render :text => items.collect{|i| "#{i.lookup_value}|#{i.model}|#{i.company_country}|#{i.code}|#{i.article}"}.join("\n")
  end

  def accessories
    q = "%#{params[:q]}%"
    items = Item.accessory.find(:all, :conditions=>["(code LIKE ?) OR (model LIKE ?) OR (article LIKE ?) OR (shortdesc LIKE ?)", q, q,q,q])
    render :text => items.collect{|i| "#{i.lookup_value}|#{i.model}|#{i.company_country}|#{i.code}|#{i.article}"}.join("\n")
  end


  def init_groups
    @orphans = Standard.orphans
    @standards = Standard.leaves
    @groups = Standard.groups
  end


  def clone
    @item = Item.find(params[:id])
    @item.clone_with_attachments

    redirect_to :back
  end

  private
  def apply_filter(scope)
    scope = scope.by_category(Category.find(params[:category_id])) unless params[:category_id].blank?
    scope = scope.by_title(params[:title]) unless params[:title].blank?

    scope = scope.by_model(params[:model]) unless params[:model].blank?
    scope = scope.by_code(params[:code]) unless params[:code].blank?
    scope = scope.by_article(params[:article]) unless params[:article].blank?

    scope = scope.scoped_by_country_id(params[:country_id]) unless params[:country_id].blank?
    scope = scope.scoped_by_company_id(params[:company_id]) unless params[:company_id].blank?
    
    scope
  end
  
end
