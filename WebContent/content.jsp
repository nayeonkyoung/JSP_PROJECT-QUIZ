<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>

body{
font-family:'Noto Sans KR Regular Regular';
font-size: 30px;
text-align:center;
}

#inpu{
color:#d92034;
background-color:white;
font-size:50px;
}
.btn{
  background : #1AAB8A;
  color : #fff;
  border:none;
  position:relative;
  width:100px;
  height:30px;
  font-size:15px;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
.btn:hover{
  background:#fff;
  color:#1AAB8A;
}
.btn:before,.btn:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
.btn:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
.btn:hover:before,.btn:hover:after{
  width:100%;
  transition:800ms ease all;
}
input[type=text] {
  border: 2px solid white;
  border-radius: 4px;
  height:20px;
}
</style>
<script>
//var name = document.getElementById("name");
function name_view(){
	  var name1 = document.getElementById('n1');
	alert("안녕하세요 , "+"나연경"+"님");
	window.onload();
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="f">
    <p id="inpu"> 자신의 이름을 입력하세요 </p>
    <input type="text" class="name" id ="n1">
    <input type="button" onclick="name_view()" class="btn" value="확인">
    </form>
</body>
</html>
