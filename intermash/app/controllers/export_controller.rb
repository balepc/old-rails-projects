class ExportController < ApplicationController

  def items
    scope1 = make_scope(false, params[:id], params[:model], params[:articule], params[:code])
    items1 = scope1.to_a

    scope2 = make_scope(true, params[:id], params[:model], params[:articule], params[:code])
    items2 = scope2.to_a

    items = (items1 + items2).flatten.uniq

    render :xml=>XmlExport.new.generate_new(items, request.host_with_port)
  end

  def models
#    headers['Content-Type'] = 'charset=utf-8'

    models = Item.find(:all, :select=>[:model]).collect{|i| i.model}.uniq

    render :xml=>XmlExport.new.generate_models(models)
  end

  def articules
    articles = Item.find(:all, :select=>[:article]).collect{|i| i.article}.uniq

    render :xml=>XmlExport.new.generate_articules(articles)
  end

  def codes
    codes = Item.find(:all, :select=>[:code]).collect{|i| i.code}.uniq

    render :xml=>XmlExport.new.generate_codes(codes)
  end

  def documents
    if params[:expire_date]
      expire_date = Date.parse(params[:expire_date])
      documents = Document.find(:all, :conditions=>["DATE(documents.valid_till) <= ? OR DATE(document_types.valid_till) <= ?", expire_date, expire_date], :include=>[:item], :joins=>:document_type)
    else
      documents = Document.find(:all, :include=>[:document_type, :item])
    end

    render :xml=>XmlExport.new.generate_expire_xml(documents, request.host_with_port)
  end


  private
    def make_scope(match, id, model, article, code)
      scope = Item.scoped(
        :include=>[{:documents => :document_type}, :images, :complectations, :accessories, :country, :company, :model_translations]
      )
      scope = single_scope(scope, :id, id)
      scope = match ? match_scope(scope, :model, model) : single_scope(scope, :model, model)
      scope = match ? match_scope(scope, :article, article) : single_scope(scope, :article, article)
      scope = match ? match_scope(scope, :code, code) : single_scope(scope, :code, code)
      scope
    end

    def match_scope(scope, attribute, value)
      unless value.blank?
        value = value.gsub(/0-9/,'')
        scope.scoped(:conditions=>["#{attribute} LIKE ?", "%#{value}%"])
      else
        scope
      end
    end

    def single_scope(scope, attribute, value)
      value ? scope.scoped(:conditions=>{attribute=>value}) : scope
    end


end