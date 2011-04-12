class Admin::DocumentTypesController < Admin::ApplicationController

  def index
    @document_types = DocumentType.all
  end

  def new
    @document_type = DocumentType.new
  end

  def create
    @document_type = DocumentType.new(params[:document_type])
    if @document_type.save
      if save_go_back?
        redirect_to admin_document_types_path
      else
        redirect_to edit_admin_document_type_path(@document_type)
      end
    else
      render :action => 'new'
    end
  end

  def destroy
    @document_type = DocumentType.find(params[:id])
    @document_type.destroy
    redirect_to admin_document_types_path
  end

  def edit
    @document_type = DocumentType.find(params[:id])
  end

  def update
    @document_type = DocumentType.find(params[:id])
    if @document_type.update_attributes(params[:document_type])
      if save_go_back?
        redirect_to admin_document_types_path
      else
        redirect_to :action => 'edit', :id => @document_type.id
      end
    else
      render :action => 'edit'
    end
  end

end
