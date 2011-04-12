class Admin::ViewTranslationsController < Admin::ApplicationController
  
  PER_PAGE = 30

  

  def title
    "Translations"
  end

  def index
    @translations = ViewTranslation.find(:all)
  end

  def apply
#    I18n.schedule_update_from_db!
    I18n.reload!
    redirect_to :back
  end

  def edit
    @translation = ViewTranslation.find(params[:id])
  end

  def update
    @translation = ViewTranslation.find(params[:id])
    if @translation.update_attributes(params[:view_translation])
      if save_go_back?
        redirect_to admin_view_translations_path
      else
        redirect_to :action => 'edit', :id => @translation.id
      end
    else
      render :action=>'edit'
    end
  end

  private
  
end
