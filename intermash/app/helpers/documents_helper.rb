module DocumentsHelper

  def download_document(doc)
    if doc.base_document_type?
      download_base_document_path(doc)
    else
      download_document_path(doc)
    end
  end

end
