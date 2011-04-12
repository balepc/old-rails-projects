jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")} 
})

function showLogin(eThis) {
    $("#pups-container > *").hide();
    $("#pups-container").hide();
    
	
    if ($("#login-container").css("display") != "block") {
        $("#login-container").show();
    }
    else {
        $("#login-container").hide();
    }
}