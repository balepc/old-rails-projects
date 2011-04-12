module Admin::FormsHelper
  
  def save_go_back?
    params[:commit] == 'Save go back'
  end
  
  def custom_file_field(name)
    "<input type='file' name='#{name}' />"
  end
  
  def custom_text_field(name)
    "<input type='text' name='#{name}' />"
  end
  
end