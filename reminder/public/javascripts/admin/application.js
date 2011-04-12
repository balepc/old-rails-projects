function mark_for_destroy(element) {
//    alert($(element));
    $(element).next('.should_destroy').value = 1;
    $(element).up('.predefined_answer').hide();
}