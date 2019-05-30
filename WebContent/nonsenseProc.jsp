<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script language="javascript">
var delay=20; //�ð�����
var correctAnswers=new Array("��������","�ʺ��","�����","����","ȭ���");  //����

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

function check_answer(){
	var answer = document.x.a1.value;
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
function check_answer2(){
	var answer = document.x2.a2.value;
	if (correctAnswers[1]==answer){
		score++;
		document.all.answerBoard.innerHTML="<font color=blue><b>�����Դϴ�.</b></font>";
	} else {
		document.all.answerBoard.innerHTML="<font color=red><b>��! Ʋ�Ƚ��ϴ�.</b></font>";
	}
	clock=0;
	clearTimeout(timer);
	timer=setTimeout("hide_question()",700);
}
function check_answer3(){
	var answer = document.x3.a3.value;
	if (correctAnswers[2]==answer){
		score++;
		document.all.answerBoard.innerHTML="<font color=blue><b>�����Դϴ�.</b></font>";
	} else {
		document.all.answerBoard.innerHTML="<font color=red><b>��! Ʋ�Ƚ��ϴ�.</b></font>";
	}
	clock=0;
	clearTimeout(timer);
	timer=setTimeout("hide_question()",700);
}
function check_answer4(){
	var answer = document.x4.a4.value;
	if (correctAnswers[3]==answer){
		score++;
		document.all.answerBoard.innerHTML="<font color=blue><b>�����Դϴ�.</b></font>";
	} else {
		document.all.answerBoard.innerHTML="<font color=red><b>��! Ʋ�Ƚ��ϴ�.</b></font>";
	}
	clock=0;
	clearTimeout(timer);
	timer=setTimeout("hide_question()",700);
}
function check_answer5(){
	var answer = document.x5.a5.value;
	if (correctAnswers[4]==answer){
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
<form name="x">
<div id="question1" style="display:none">
	<b>1. �� �߿� ���� ���� ����?</b><br>
	<input type="text" size="30" name="a1">
	<input type="button" value="����" onclick="check_answer()"></a><br>
</div></form>

<form name="x2">
<div id="question2" style="display:none">
<b>2. ���Ⱑ ������ �������� �ɸ��� �����?</b><br>
<input type="text" size="30" name="a2">
	<input type="button" value="����" onclick="check_answer2()"><br>
</div></form>

<form name="x3">
<div id="question3" style="display:none">
<b>3. ���� �ڿ� ���Է� ����� ��ġ�� �����?</b><br>
<input type="text" size="30" name="a3">
	<input type="button" value="����" onclick="check_answer3()"><br>
</div></form>

<form name="x4">
<div id="question4" style="display:none">
<b>4. �ҹ����� �����̰� �ƺ��� �����̰� ���� �����̴�.�̰��� �����ϱ�?</b><br>
<input type="text" size="30" name="a4">
	<input type="button" value="����" onclick="check_answer4()"><br>
</div></form>

<form name="x5">
<div id="question4" style="display:none">
<b>5. ���ϰ��� ���� �ε���� ���ζ�� �Ҹ��� �� ���� ����?</b><br>
<input type="text" size="30" name="a5">
	<input type="button" value="����" onclick="check_answer5()"><br>
</div></form>


<div id="quizScore" style="display:none">
</div>

</body>
</html>