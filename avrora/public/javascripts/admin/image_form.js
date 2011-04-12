ImageForm = {

	remove_image: function(id){
		$.ajax({
			type: "POST",
			url: "/images/items/" + id,
			dataType: "script",
			data: {
				//authenticity_token: AUTH_TOKEN,
				_method: "delete"
			},
			success: function(msg){
				$("#image_" + id).remove();
			}
		});
	},
	check_image_count: function(){
		if ($('.form-thumb').length >= MAX_ALLOWED_PICTURES) {
			$('#file_input_box').attr('disabled', 'true');
		}
		else {
			$('#file_input_box').removeAttr("disabled");
		}
	}
	
}