<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
var request;
function getRelative(){
	alert("check otp on email ");
	var v1=document.mail.e.value;
	var url="send?to="+v1;

	if(window.XMLHttpRequest){
	request=new XMLHttpRequest();
		}
	else
		if(window.ActiveXObject){
	request=new ActiveXObject("Microsoft.XMLHTTP");

			}
try{
	
	request.onreadystatechange=getMem;
	
	request.open("Post",url,true);
	request.send();
}catch(e){
	alert("cant connect server");
}
}

var request;
function getOtp(){

	var v1=document.conformotp.otp.value;

	var url="otpconform.jsp?newo="+v1;

	if(window.XMLHttpRequest){
	request=new XMLHttpRequest();
		}
	else
		if(window.ActiveXObject){
	request=new ActiveXObject("Microsoft.XMLHTTP");

			}
try{
	
	request.onreadystatechange=getMem;
	
	request.open("Post",url,true);
	request.send();
}catch(e){
	alert("cant connect server");
}
}


function getMem(){
	
	if(request.readyState==4){
	var val=request.responseText;
	document.getElementById('msg').innerHTML=val;
		}
}


</script>
</head>
<body>
<form name="mail">
Gmail :<input type="tel" name="e"/>
<input type="button" value="Genrate OTP" onclick="getRelative()"><br/>
<%session.getAttribute("otp");session.setMaxInactiveInterval(5 * 60);
%>
</form>
<br/>
<span id="msg"></span>




</body>
</html>