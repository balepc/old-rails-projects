class XmlExport
  include ActionController::UrlWriter
  
  def generate_new(items, host)
    @xml = Builder::XmlMarkup.new(:indent => 1)
    @xml.instruct!
    
    @xml.items do 
      items.each do |item|
        
        @xml.item(:id=>item.id) do
          
          @xml.language(:code=>'ru') do 
            @xml.model item.model
            @xml.articule item.article
            @xml.code item.code
            @xml.country item.country_name
            @xml.company item.company_name
            @xml.short_description item.shortdesc
            @xml.description item.description
          end
          
          @xml.language(:code=>'en') do 
            @xml.model item.model_en
            @xml.articule item.article_en
            @xml.code item.code_en
            @xml.country item.country_name_en
            @xml.company item.company_name_en
            @xml.short_description item.shortdesc_en
            @xml.description item.description_en
          end
          
          @xml.images do
            item.images.each do |image|
              @xml.image_url "http://#{host}#{image.image_data.url}"
            end
          end
          
          @xml.documents do 
            item.documents.each do |document|
              # unless document.hidden?
                @xml.document(:common=>document.base_document_type?, :hidden=>document.document_type.hidden?) do
                  @xml.filename document.common_name              
                                    
                  @xml.document_url document.base_document_type? ? download_base_document_url(document, :host=>host) : download_document_url(document, :host=>host)
                  @xml.document_type document.document_type.name, {:id=>document.document_type_id}
                  @xml.expiration_date document.base_document_type? ?
                    document.document_type.valid_till : document.valid_till
                end
              # end
            end
          end
          
          @xml.item_complectation do 
            item.complectations.each do |complectation|
              @xml.item(:id=>complectation.item.id, :count=>complectation.count)
            end
          end
          
          @xml.item_accessories do 
            item.accessories.each do |accessory|
              @xml.item(:id=>accessory.item.id, :count=>accessory.count)
            end
          end
        end        
      end
    end
    
  end




  def generate_models(models)
    @xml = Builder::XmlMarkup.new(:indent => 1)
    @xml.instruct!

    @xml.models do
      models.each do |model|
        @xml.model model
      end
    end
  end

  def generate_articules(articules)
    @xml = Builder::XmlMarkup.new(:indent => 1)
    @xml.instruct!

    @xml.articules do
      articules.each do |articule|
        @xml.articule articule
      end
    end
  end
  def generate_codes(codes)
    @xml = Builder::XmlMarkup.new(:indent => 1)
    @xml.instruct!

    @xml.codes do
      codes.each do |code|
        @xml.code code
      end
    end
  end



  def generate_expire_xml(documents, host)
    @xml = Builder::XmlMarkup.new(:indent => 1)
    @xml.instruct!

    @xml.documents do
      documents.each do |document|
        @xml.document do

          @xml.document(:common=>document.base_document_type?, :id=>document.id) do
            @xml.filename document.common_name
              
            @xml.url document.base_document_type? ?
              edit_admin_document_type_url(document.document_type, :host=>host) :
              edit_admin_item_url(document.item, :host=>host)

            @xml.download_url document.base_document_type? ? download_base_document_url(document, :host=>host) : download_document_url(document, :host=>host)

            @xml.document_type document.document_type.name, {:id=>document.document_type_id}
            @xml.expiration_date document.base_document_type? ?
              document.document_type.valid_till : document.valid_till
            @xml.hidden document.hidden?
          end

        end
      end
    end
  end
  
end
