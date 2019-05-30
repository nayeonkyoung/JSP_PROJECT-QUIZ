<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
body{
font-family:'Noto Sans KR Regular Regular';
font-size:20px;
text-align:center;
}
b{
font-size: 30px;
}
input[type=text] {
  border: 2px solid white;
  border-radius: 4px;
  height:20px;
}
.p1{
text-decoration:none;
color:#8d3049;
}

#quizScore{
  margin:3rem auto -2rem;
  font-size:4rem;
  letter-spacing:-2px;
  color:#6B566B;
  text-shadow:0px 0px 0 #AFC7B9,
    1px 1px 0 #AFC7B9,
    -2px -2px 0 #AFC7B9,
    -3px -3px 0 #AFC7B9,
    -4px -4px 0 #AFC7B9,
    -5px -5px 0 #FCA89D,
    -6px -6px 0 #FCA89D,
    -7px -7px 0 #FCA89D,
    -8px -8px 0 #FAC7B4,
    -9px -9px 0 #FAC7B4,
    -10px -10px 0 #FAC7B4,
    -11px -11px 0 #FAC7B4,
    -12px -12px 0 #FFE1C9,
    -13px -13px 0 #FFE1C9,
    -14px -14px 0 #FFE1C9, 
     10px -10px 0 hsla(0,0%,0%,.08),
      0 8px 8px hsla(0,0%,0%,.15);   
}
</style>
<script language="javascript">
var delay=20; //�ð�����
var correctAnswers=new Array("a","b","b","b","a");  //����

var q_num=1;
var timer;
var layer;
var clock=delay;
var score=0;

function show_question(){
	if (layer=eval("document.all.question"+q_num)){
		layer.style.display="inline";
		document.all.timeLeft.innerHTML=clock;
		hide_question();
	} else {
		document.all.timeLeft.innerHTML=0;
		document.all.quizScore.innerHTML="����� "+(q_num-1)+"������ "+score+"���� ������ϴ�.";
		document.all.quizScore.style.display="inline";
	}
}

function hide_question(){
	if (clock>0) {
		document.all.timeLeft.innerHTML=clock;
		clock--;
		timer=setTimeout("hide_question()",1000);
	} else {
		clearTimeout(timer);
		document.all.answerBoard.innerHTML=" ";
		clock=delay;
		layer.style.display="none";
		q_num++;
		show_question();
	}
}

function check_answer(answer){
	if (correctAnswers[q_num-1]==answer){
		score++;
		document.all.answerBoard.innerHTML="<font color=blue><b>�����Դϴ�.</b></font>";
	} else {
		document.all.answerBoard.innerHTML="<font color=red><b>��! Ʋ�Ƚ��ϴ�.</b></font>";
	}
	clock=0;
	clearTimeout(timer);
	timer=setTimeout("hide_question()",700);
}

window.onload=show_question;
</script>
</head>

<body>
<br><br>

���ѽð� : <B><span id="timeLeft"></span></B> ��<br>
<br>
<div id="answerBoard"> </div>

<div id="question1" style="display:none">
	<b>1. ���̴� ä�Ұ� �ƴ϶� �����̴�?</b><br>
	<a href="javascript:void(0)" onclick="check_answer('a')"> �� O</a><br>
	<a href="javascript:void(0)" onclick="check_answer('b')"> �� X</a><br>
</div>

<div id="question2" style="display:none">
	<b>2. ��Ÿ�� Ȥ �ӿ��� ���� ����ִ�?</b><br>
	<a href="javascript:void(0)" onclick="check_answer('a')"> �� O</a><br>
	<a href="javascript:void(0)" onclick="check_answer('b')"> �� X</a><br>
</div>

<div id="question3" style="display:none">
	<b>3. �Ϸ�� å�� ���� ������ �Կ� ���ð� �����ٴ� ���߱��ǻ��� ���̴�?</b><br>
	<a href="javascript:void(0)" onclick="check_answer('a')"> �� O</a><br>
	<a href="javascript:void(0)" onclick="check_answer('b')"> �� X</a><br>
</div>

<div id="question4" style="display:none">
	<b>4. ���� ������ �츮���̴�?</b><br>
	<a href="javascript:void(0)" onclick="check_answer('a')"> �� O</a><br>
	<a href="javascript:void(0)" onclick="check_answer('b')"> �� X</a><br>
</div>

<div id="question5" style="display:none">
	<b>5. ��¡��� ���� �ٸ��� 10���̰�, ����� ������ 8���̴�?</b><br>
	<a href="javascript:void(0)" onclick="check_answer('a')"> �� O</a><br>
	<a href="javascript:void(0)" onclick="check_answer('b')"> �� X</a><br>
</div>

<div id="quizScore" style="display:none">
</div>

</body>
</html>