<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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

���ѽð� : <B><span id="timeLeft"></span></B> ��<br>
<br>
<div id="answerBoard"> </div>
<br>

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