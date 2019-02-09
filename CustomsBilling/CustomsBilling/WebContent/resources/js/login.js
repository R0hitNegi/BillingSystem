$(document).ready(function(){
	$("#login").click(function(){
		if($("#username").val()==""){
			$(".uname").addClass("error");
			$("#username").css({"border":"2px solid red"});
		}
		if($("#password").val()==""){
			$(".pass").addClass("error");
			$("#password").css({"border":"2px solid red"});
		}
	})
	
	$("#username").change(function(){
		var qw = $("#username").val();
		var re1=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		var re2=/[^a-zA-Z0-9]/;
		
		if (re2.test(String(qw).toLowerCase()) ){
			$("#ulable").text("Alphanumeric and Email Only");}
	    })
	    
	$("#username").click(function(){
		$("#username").css({"border":"2px solid #0AC986"});
		$("#password").css({"border":"2px solid #0AC986"});
		$(".wrongmsg").css({"display":"none"});
		$(".input").removeClass("error");
	})
})


	
document.onkeydown = function(e) {
        if (e.ctrlKey && 
            (e.keyCode === 67 || 
             e.keyCode === 86 || 
             e.keyCode === 85 || 
             e.keyCode === 117)) {
            return false;
        } else {
            return true;
        }
};
$(document).keypress("u",function(e) {
  if(e.ctrlKey)
  {
return false;
}
else
{
return true;
}
});
