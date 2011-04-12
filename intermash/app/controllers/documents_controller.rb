require 'hmac'
require 'hmac-sha1'
require 'base64'

class DocumentsController < ApplicationController
  KEY = "gWt(Am*djh!eks)beuy_"
  
  def download
    document = Document.find(params[:id])

    raise ActiveRecord::RecordNotFound if (document.hidden? and !allow_to_see?(params,  document.common_name))
    
    send_file(document.document.path)
  end

  def download_base
    document = Document.find(params[:id])

    raise ActiveRecord::RecordNotFound if (document.hidden? and !allow_to_see?(params, document.common_name))

    send_file(document.document_type.basedocument.path)
  end
  
  def allow_to_see?(params, name)
    logged_in? or
      params[:key] == HMAC::SHA1.hexdigest(KEY, "#{name}#{Time.now.strftime("%Y%m%d")}")
  end

end
