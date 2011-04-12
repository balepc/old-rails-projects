namespace :app do

  task :translations => :environment do
    ViewTranslation.add(:choose_one_category, "Выберите как минимум одну категорию")
    ViewTranslation.add(:item_code, "Код")
    ViewTranslation.add(:item_articule, "Артикул")
    ViewTranslation.add(:item_production, "Производство")
    ViewTranslation.add(:last_items, "Наши последние поступления")
    ViewTranslation.add(:item_code_tn, "Код ТНВЭД")
    ViewTranslation.add(:item_standarts, "Стандарты")
    ViewTranslation.add(:item_complectation, "Комплектация")
    ViewTranslation.add(:choose_categories, "Какие категории Вы хотите включить в прайс-лист?")
    ViewTranslation.add(:generate, "формировать")
    ViewTranslation.add(:search_results, "Результаты поиска")
    ViewTranslation.add(:nothing_found, "Ничего не найдено")
    ViewTranslation.add(:contact_phone, "Тел.:  +7(916) 448-06-15,")
    ViewTranslation.add(:contact_phone_2, "+7(916) 032-26-96")
    ViewTranslation.add(:contact_address, "Адрес:  109428, г.Москва,")
    ViewTranslation.add(:contact_address2, "Рязанский проспект, д.39А, стр.1")
    ViewTranslation.add(:copyright, "Copyright 2008-2009 ООО «Альянс-Торг»")
    ViewTranslation.add(:title, "Альянс Торг: Главная")
    ViewTranslation.add(:company_name, "Альянс Торг")
    ViewTranslation.add(:menu_main, "Главная")
    ViewTranslation.add(:menu_about, "О компании")
    ViewTranslation.add(:menu_catalog, "Каталог")
    ViewTranslation.add(:menu_pricelist, "Прайс-лист")
    ViewTranslation.add(:menu_contacts, "Контакты")
    ViewTranslation.add(:search, "поиск")
    ViewTranslation.add(:find, "найти")

    ViewTranslation.add(:company_filter, "Company filter", 'Фильтр по производителю')
    ViewTranslation.add(:check_all, "Check all", 'Выбрать все')
    ViewTranslation.add(:apply_filter, "Apply filter", 'Применить фильтр')

    ViewTranslation.add(:menu_companies, "Companies", 'Производители')
    ViewTranslation.add(:item_title, "Title", 'Название')

    ViewTranslation.add(:item_documents, "Documents", 'Документы')
    ViewTranslation.add(:no_items_found, "No items", 'Нет продуктов')

    ViewTranslation.add(:item_accessories, "Accessories", 'Аксесуары')
    
    ViewTranslation.add(:item_model, "Model", 'Модель')
    ViewTranslation.add(:item_country, "Country", 'Страна')
    ViewTranslation.add(:item_company, "Company", 'Компания')
    ViewTranslation.add(:item_short_desc, "Short Description", 'Описание')
    ViewTranslation.add(:item_count, "Count", 'Количество')

    ViewTranslation.add(:valid_till, "Valid till", 'Годен до')

    ViewTranslation.add(:login, "Login", 'Вход')
    ViewTranslation.add(:logout, "Logout", 'Выход')
  end
  
end