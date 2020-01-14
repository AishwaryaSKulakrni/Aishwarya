$(document).ready(function(){
//alert("gdfgd");
	//Change password
	$("#pass_ch").click(function(){
		var user_name = $("#user").val();
		var password = $("#password").val();
		alert(user_name);
		alert(password);
		$.post("change_password", {user_name: user_name , password: password} ,  function(result){
			//alert("Request Accepted");
			alert("Password changed successfully");
		});
	});
	
	var txt = $("#user").val();

	$.post("basic_details", {user_name: txt} ,  function(result){
		var basic_detail = result ;
		basic_detail = JSON.parse(basic_detail);
		$("#name").val(basic_detail.name);
		$("#designation").val(basic_detail.designation);
		//alert(basic_detail.username);
		
	});
	
	
//var txt = $("#user").val();

var credit_data = $("#credit").val();
var avail_data = $("#avail").val();
var balance_data = credit_data - avail_data; 
$("#balance").val(balance_data);

$.post("count", {user_name: txt} ,  function(result){
	var counter = result ;
	$("#submit1").hide();
    $("#submit2").show();
    counter = JSON.parse(counter);
    var int_avail= parseInt(counter.avail);
    avail_data = int_avail + 1;
    var balance_data = credit_data - avail_data; 
    $("#balance").val(balance_data);
    $("#avail").val(avail_data);
    
	
	//alert(avail_data);
	//alert(balance_data);
	
});



//data save at first time
$("#submit1").click(function(){
	alert("Data Saved Successfully");
	
});

//data updating 
$("#submit2").click(function(){
	var user_name = $("#user").val();
	var reason = $("#reason").val();
	var avail = $("#avail").val();
	var balance = $("#balance").val();
	var date = $("#date").val();
	//alert(user_name);
	$.post("update_leave", {user_name: user_name , reason: reason ,avail: avail,balance: balance,date: date} ,  function(result){
		//alert("Request Accepted");
		alert("Data Updated Successfully");
	});
});

function printData()
{	
	//alert($("#balance").val());
   var divToPrint=document.getElementById("print_data");
   newWin= window.open("");
   newWin.document.write(divToPrint.outerHTML);
   newWin.print();
   newWin.close();
   //alert(balance);
}

$("#print_function").click(function () {
	printData();
});

});
