class Admin::AssetsController < Admin::AdminController
  
  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy
    redirect_to :back
  end
  
  def set_default
    @asset = Asset.find(params[:id])
    @asset.default!
    redirect_to :back
  end

end
