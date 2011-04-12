module Admin::PagesHelper

  def page_type_list
    { Page::TYPE_WELCOME => 'Главная',
      Page::TYPE_ABOUT => 'О компании',
      Page::TYPE_CONTACTS => 'Контакты' }
  end
end
