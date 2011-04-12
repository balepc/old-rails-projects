class CategoriesData < ActiveRecord::Migration
  
  def self.up
    neftehimija = Category.create(:name=>'Приборы для нефтехимии')
      create_category('Вода и осадок', neftehimija)
      create_category('Вспышка', neftehimija)
      create_category('Вязкость', neftehimija)
      create_category('Детонация и сгорание', neftehimija)
  end
  
  def self.down
    Category.destroy_all
  end
  
  private
  def self.create_category(name, parent)
    child = Category.create(:name=>name)
    child.move_to_child_of(parent)
  end
  
  
end
