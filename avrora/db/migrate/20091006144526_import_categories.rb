class ImportCategories < ActiveRecord::Migration
  def self.up
    Category.destroy_all
    
    parent = Category.create(:name=>"Приборы для нефтехимии")
    parent.save
    
    child = Category.create(:name=>"Вода и осадок")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Вспышка")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Вязкость")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Детонация и сгорание")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Испытание битумов")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Испытание масел")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Испытание смазок")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Коррозия")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Пенетрация")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Плотность")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Трибология")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Фракционный состав")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Холодное поведение")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Цвет")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Элементный состав")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Другие методы")
    child.move_to_child_of(parent)
    child.save
    
    parent = Category.create(:name=>"Приборы Mitsubishi Chemical")
    parent.save
    
    child = Category.create(:name=>"Титраторы")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Элементный состав")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Хроматографы")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Резистивиметры")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Печи")
    child.move_to_child_of(parent)
    child.save
    
    parent = Category.create(:name=>"Испытательные камеры и вибростенды")
    parent.save
    
    child = Category.create(:name=>"Климатические камеры")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Камеры тепла-холода")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Прогулка")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Камеры шокового температурного воздействия и термоудара")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Температурные камеры с увеличенной скоростью охлаждения и нагрева")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Камеры солевого тумана и ультрафиолета")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Вибрационные температурные климатические камеры")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Вакуумные климатические камеры")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Камеры дождя (орошения водой)")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Камеры пыли")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Температурные камеры с вертикальной загрузкой")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Камеры SHED и специальные камеры")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Климатические камеры для испытания на стабильность фармацевтики")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Системы управления программного обеспечения камер")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Вибростенды")
    child.move_to_child_of(parent)
    child.save
    
    parent = Category.create(:name=>"Хромотографы и спектрометры “Вариан”")
    parent.save
    
    child = Category.create(:name=>"Хроматографы")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Спектрометры")
    child.move_to_child_of(parent)
    child.save
    
    parent = Category.create(:name=>"Приборы и оборудование Антон Паар")
    parent.save
    
    child = Category.create(:name=>"Плотнометры и измерение концентрации")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Вязкость")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Реометры")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Микроволновая пробоподготовка")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Анализ напитков")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Микроволновый синтез")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Малоугловое рентгеновское рассеяние")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Электрокинетический анализ")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Optotec")
    child.move_to_child_of(parent)
    child.save
    
    parent = Category.create(:name=>"Общелабораторное оборудование «IKA»")
    parent.save
    
    child = Category.create(:name=>"Приводы мешалок")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Встряхиватели")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Диспергаторы погружные")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Мельницы лабораторные")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Нагревающие устройства")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Термостаты жидкостные")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Ротационные испарители")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Реактор лабораторный")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Экстрактор серийный")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Диспергаторы поточные")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Магнитные мешалки без подогрева")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Магнитные мешалки многоместные без подогрева")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Магнитные мешалки с подогревом")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Магнитные мешалки многоместные с подогревом")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Магнитные мешалки - аксессуары")
    child.move_to_child_of(parent)
    child.save
    
    parent = Category.create(:name=>"Вискозиметры Брукфильда")
    parent.save
    
    child = Category.create(:name=>"Вискозиметры Брукфильда")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Реометры Брукфильда")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Текстурные анализаторы")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Принадлежности")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Термостаты")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Программное обеспечение")
    child.move_to_child_of(parent)
    child.save
    
    parent = Category.create(:name=>"Термостаты и криостаты")
    parent.save
    
    child = Category.create(:name=>"Термостаты и криостаты1")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Термостаты и криостаты2")
    child.move_to_child_of(parent)
    child.save
    
    parent = Category.create(:name=>"Лабораторная мебель")
    parent.save
    
    child = Category.create(:name=>"EUROMINI")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"EUROMAX")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Экология")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Вытяжные шкафы")
    child.move_to_child_of(parent)
    child.save
    
    parent = Category.create(:name=>"LIMS (ЛИМС) Лабораторные информационные системы")
    parent.save
    
    child = Category.create(:name=>"STARLIMS")
    child.move_to_child_of(parent)
    child.save
    child = Category.create(:name=>"Lab5725X")
    child.move_to_child_of(parent)
    child.save


  end

  def self.down
    Category.destroy_all
  end
end
