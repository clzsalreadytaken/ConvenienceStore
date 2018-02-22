$(function(){
	var c = $("us").text()
	if(c==""){
		window.location.href="index.jsp";
	}
	//分页
	$.getJSON(
				"getlist",
				"index="+1,
				function(){
		})
		
	$("#addO").click(function(){
		//alert(1);
		var product_name = $("#product_name").val();
		var product_purchase = $("#product_purchase").val();
		var product_sell = $("#product_sell").val();
		var product_unit = $("#product_unit").val();
		/*alert(product_name);
		alert(product_purchase);*/
		$.getJSON(
				"addone",
				"product_name="+product_name+"&product_purchase="+product_purchase+"&product_sell="+product_sell+"&product_unit="+product_unit,
				function(result){
					if(result==1){
						alert("添加成功！");
					}else{
						alert("添加失败！");
					}

				}
		)
	})
})