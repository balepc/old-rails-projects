require 'prawn'
#require 'prawn/core'
#require 'prawn/format'
require 'prawn/layout'


class ItemExport
  include ActionController::UrlWriter

  def generate_expire_xml(documents, host)
    @xml = Builder::XmlMarkup.new(:indent => 1)
    @xml.instruct!

    @xml.documents do
      documents.each do |doc|
        @xml.document(:id=>doc.id) do
          @xml.item_url item_url(doc.item, :host=>host)
          @xml.type doc.document_type.name
          @xml.expire doc.valid_till
          @xml.document_url download_document_url(doc, :host=>host)
        end
      end
    end

  end

  def self.generate_xml(items)
    @xml = Builder::XmlMarkup.new(:indent => 1)
    @xml.instruct!
    
    out = @xml.items do
      for item in items do
        @xml.item do
          @xml.category item.category.name if item.category
          @xml.title item.title
          @xml.model item.model
          @xml.code item.code
          @xml.country item.country_name
          @xml.company item.company_name
          @xml.article item.article
          @xml.shortdesc item.shortdesc
          @xml.created_at item.created_at
          @xml.updated_at item.updated_at

          @xml.variants do
            item.items.each do |it|
              @xml.variant do
                @xml.title it.title
              end
            end
          end
          
        end
      end
    end
    out
  end

  def self.generate_pdf(items)
    p_items = items.group_by{|i| i.category}
    Prawn::Document.new do
      font "#{Prawn::BASEDIR}/data/fonts/DejaVuSans.ttf"
      text "PriceList #{Date.today}", :size => 15
      move_down(30)

      p_items.each do |category, items|
        move_down(20)
        text "#{category.name}", :size => 8
        move_down(5)

        header = ["Title", "Model", "Code", "Article", "Producer", "Short Desc"]

        items.each_with_index do |item, index|
          cas = item.items.map{|ca| [ca.title, '']}
          item = [[item.title, item.model, item.code, item.article, item.company_country, item.shortdesc]]

          table item, :border_style => :grid, :font_size=>5,
            :row_colors => index==0 ?  ["DDDDDD", "FFFFFF"]: ["FFFFFF"],
            :headers => index == 0 ? header : nil,
            :column_widths => {0=>100, 1=>50, 2=>50, 3=>50, 4=>100, 5=>200}, :border_width=>1

          
          unless cas.empty?
            table cas, :border_style => :grid, :font_size=>4,:border_width=>0.5,
              :column_widths => {0=>350, 1=>200}
          end
          #          move_down(10)

        end
      end
      
      move_down(10)
    end
  end

end