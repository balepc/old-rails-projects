Application = {

    changeLocale: function(locale) {
        $.cookie('locale', locale, {path:'/'});
        window.location.reload();
    },


    checkAll: function(form_name) {
        $(form_name+' input').attr('checked', true);
    }

}