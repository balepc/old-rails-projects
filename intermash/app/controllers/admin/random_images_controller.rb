class Admin::RandomImagesController < Admin::ApplicationController

  def index
    @images = RandomImage.all
  end

  def new
    @image = RandomImage.new
  end

  def create
    @image = RandomImage.new(params[:random_image])

    if @image.save
      if save_go_back?
        redirect_to admin_random_images_path
      else
        redirect_to :action => 'new'
      end
    else
      render :action => 'new'
    end
  end

  def destroy
    @image = RandomImage.find(params[:id])
    @image.destroy
    redirect_to admin_random_images_path
  end

end
