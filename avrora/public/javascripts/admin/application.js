Application = {

    changeLocale: function(locale) {
        $.cookie('admin_locale', locale, {path:'/admin'});
        window.location.reload();
    }

}