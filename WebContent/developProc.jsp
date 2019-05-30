<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script language="javascript">
var delay=20; //�ð�����
var correctAnswers=new Array("b","a","c","c","a");  //����

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
	<b>1. �ڹٿ��� �޼ҵ� �����ε��� ���� �������� Ʋ�� ����?</b><br>
	<a href="javascript:void(0)" onclick="check_answer('a')"> �� ���� Ŭ���� ������ �߻��Ѵ�.	</a><br>
	<a href="javascript:void(0)" onclick="check_answer('b')"> �� �Ű������� ���̳� ������ �����ؾ� �Ѵ�.</a><br>
	<a href="javascript:void(0)" onclick="check_answer('c')"> �� �������� �����ϱ� ���� ��ġ�̴�.</a><br>
	<a href="javascript:void(0)" onclick="check_answer('d')"> �� �޼ҵ� �̸��� �����ؾ� �Ѵ�.</a><br>
</div>

<div id="question2" style="display:none">
<b>2.���� ���� ���α׷��� ����� �����ΰ�?</b><img src="img/d2.png" id="logo" width="800px" height="350px"> <br>
<a href="javascript:void(0)" onclick="check_answer('a')">�� Hello</a><br>
<a href="javascript:void(0)" onclick="check_answer('b')">�� Hello Java!</a><br>
<a href="javascript:void(0)" onclick="check_answer('c')">�� ������ ����</a><br>
<a href="javascript:void(0)" onclick="check_answer('d')">�� ������ ���� �߻�</a><br>
</div>

<div id="question3" style="display:none">
<b>3. Java.lang ��Ű���� �ڹ� ���α׷����� ( )���� ����Ͽ� ���Խ�Ű�� �ʾƵ� �ڵ������� ���ԵǴ� ��Ű���̴�. <br>�� ��Ű���� �ڹ� ���α׷��� �⺻�� �Ǵ� Ŭ������� �������̽����� �����ϰ� �־� �ڹ� ���α׷����� ���� ����Ѵ�.</b><br>
<a href="javascript:void(0)" onclick="check_answer('a')">�� extends</a><br>
<a href="javascript:void(0)" onclick="check_answer('b')">�� package</a><br>
<a href="javascript:void(0)" onclick="check_answer('c')">�� import</a><br>
<a href="javascript:void(0)" onclick="check_answer('d')">�� class</a><br>
</div>

<div id="question4" style="display:none">
<b>4. ������ �ڹ��� ���� ó���� ���� �����̴�. Ʋ�� ����?</b><br>
<a href="javascript:void(0)" onclick="check_answer('a')"> �� try~catch~finally ���� ���� ���� catch���� �� �� �ִ�.</a><br>
<a href="javascript:void(0)" onclick="check_answer('b')"> �� finally���� ���� �����ϴ�.</a><br>
<a href="javascript:void(0)" onclick="check_answer('c')"> �� ��� �޼ҵ� ���� ������ ������ �����Ͽ��� �Ѵ�.</a><br>
<a href="javascript:void(0)" onclick="check_answer('d')"> �� ���α׷��Ӱ� �������� ���� ���ܴ� ����Ʈ ���� ó���Ⱑ ó���Ѵ�.</a><br>
</div>





<div id="question5" style="display:none">
<b>5.���� ���� ���α׷��� ����� �����ΰ�?</b><img src="img/d5.png" id="logo" width="800px" height="400px"><br>
<a href="javascript:void(0)" onclick="check_answer('a')">�� ������ ��������.</a><br>
<a href="javascript:void(0)" onclick="check_answer('b')">�� exception �߻�</a><br>
<a href="javascript:void(0)" onclick="check_answer('c')">�� 10 - 20 - 30 ���� ��µȴ�.</a><br>
<a href="javascript:void(0)" onclick="check_answer('d')">�� -40 ���� ��µȴ�.</a><br>
</div>

<div id="quizScore" style="display:none">
</div>

</body>
</html>