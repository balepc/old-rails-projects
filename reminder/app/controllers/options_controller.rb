class OptionsController < ApplicationController
  
  def destroy
    @memo = Memo.find(params[:memo_id])
    option_to_delete = Option.find(params[:id])
    other_to_delete = @memo.options.find_all{|option| option.level > option_to_delete.level }
    
    @memo.options.delete(option_to_delete)
    other_to_delete.each do |other|
      @memo.options.delete(other)
    end
    redirect_to :back
  end
  
  def index
    
  end
  
end
