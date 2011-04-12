class FavoritesController < ApplicationController
  before_filter :login_required
  
  def create
    @item = Item.find(params[:item_id])
    current_user.favorites.create(:item => @item)
    
    respond_to do |format|
      format.html { redirect_to :back }
      format.js { 
        render :update do |page|
          page[:favorite_buttons].replace_html :partial => 'items/favorite_buttons'
        end
      }
    end
  end
  
  def destroy
    favorite = Favorite.find(params[:id])
    @item = favorite.item
    current_user.items.delete(@item)
    
    respond_to do |format|
      format.html { redirect_to :back }
      format.js { 
        render :update do |page|
          page[:favorite_buttons].replace_html :partial => 'items/favorite_buttons'
        end
      }
    end
  end
  
end
