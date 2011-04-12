module Admin::DocumentsHelper

  def add_document_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :custom_documents, :partial => 'document', :object => Document.new
      page.call 'documentsChanged'
    end
  end

  def add_base_document_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :custom_documents, :partial => 'base_document', :object => Document.new
      page.call 'documentsChanged'
    end
  end
  
end