class MemosController < ApplicationController
  
  before_filter :login_required
  
  def show
    @memo = current_user.memos.find(params[:id])
    @other_items = Item.paginate(:all, 
      :include => [:assets], :page => params[:page], :per_page => 10,
      :order => 'current_date()')
  end
  
  def new
    @memo = Memo.new
  end
  
  def destroy 
    @memo = current_user.memos.find(params[:id])
    @memo.destroy
    
    redirect_to events_path
  end
  
  def create
    @memo = current_user.memos.new(params[:memo])
    if @memo.save
      redirect_to events_path
    else
      render :action => 'new'
    end
  end
  
  def persons
    @persons = Memo.birthdates
  end
  
end
