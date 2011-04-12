class DocumentsController < ApplicationController
  
  def download
    document = Document.find(params[:id])

    raise ActiveRecord::RecordNotFound if (document.hidden? and !logged_in?)
    
    send_file(document.document.path)
  end

end
