class PriceListController < ApplicationController

  before_filter :find_root_categories

  before_filter :authenticate, :only=>[:xml, :generate]

  include ActionController::UrlWriter

  def xml
    render :xml=>ItemExport.generate_xml(Item.all)
  end

  def documents
    day_count = params[:daycount] || 5
    documents = Document.find(:all, :conditions=>["DATE(valid_till) - DATE(now()) <= ?", day_count])

    render :xml=>ItemExport.new.generate_expire_xml(documents, request.host_with_port)
  end
  
  def index
    redirect_to '/' unless logged_in?
    flash[:notice] = ''
    @price_lists = PriceList.all
  end

  def generate
    if params[:categories].nil? or params[:categories].empty?
      flash[:notice] = I18n.t(:choose_one_category)
      render :action=>"show"
    else
      selected = Category.find(:all, :conditions=>{:id=>params[:categories]})
      items = []
      selected.each do |cat|
        items << Item.by_category(cat)
      end

      send_data(ItemExport.generate_pdf(items.compact.flatten).render, :type=>'application/pdf', :disposition=>'inline')
    end
  end

  def download
    redirect_to '/' unless logged_in?
    price_list = PriceList.find(params[:id])
    send_file(price_list.pricelist.path)
  end

  private
  def find_root_categories
    @categories = Category.roots
  end

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "user" && password == "user"
    end
  end

end
