class HolidaysController < ApplicationController
  
  def show
    @holiday = Holiday.find(params[:id])
    
    @title = "Подарки на #{@holiday.title}"
    
    @meta_description = @holiday.seo_description
    @meta_keywords = @holiday.seo_keywords
  end

end
