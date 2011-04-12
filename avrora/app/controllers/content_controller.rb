class ContentController < ApplicationController
  
  def show
    @random_image = RandomImage.random
  end
  
  def pricelist
  end
  
end
