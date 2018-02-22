$(function(){
	$("#login").click(function(){
		var a = $("#firstname").val();
		var b = $("#firstpwd").val();
		$.getJSON(
				"login",
				"store_uname="+a+"&store_pwd="+b,
				function(result){
					if(result==1){
						window.location.href="StoreProduct.jsp";
					}else{
						alert("用户名或密码错误,请重新登陆")
					}
				}
		)
	})
})