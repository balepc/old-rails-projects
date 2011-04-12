class Admin::ImagesController < Admin::ApplicationController

  def destroy
    Image.find(params[:id]).destroy
    redirect_to :back
  end

end
