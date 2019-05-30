<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script language="javascript">
var delay=10; //�ð�����
var correctAnswers=new Array("a","a","a","a","a");  //����

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
	<a href="javascript:void(0)" onclick="check_answer('a')">a) �� ���� Ŭ���� ������ �߻��Ѵ�.	</a><br>
	<a href="javascript:void(0)" onclick="check_answer('b')">b) �� �Ű������� ���̳� ������ �����ؾ� �Ѵ�.</a><br>
	<a href="javascript:void(0)" onclick="check_answer('c')">c) ��ȣ��</a><br>
	<a href="javascript:void(0)" onclick="check_answer('d')">d) ����</a><br>
</div>

<div id="question2" style="display:none">
<b>2. ������ �����ð� �ƴѰ���?</b><br>
<a href="javascript:void(0)" onclick="check_answer('a')">a) ����</a><br>
<a href="javascript:void(0)" onclick="check_answer('b')">b) ����</a><br>
<a href="javascript:void(0)" onclick="check_answer('c')">c) ���</a><br>
<a href="javascript:void(0)" onclick="check_answer('d')">d) ��õ</a><br>
</div>

<div id="question3" style="display:none">
<b>3. ���� �������� �ƴѰ���?</b><br>
<a href="javascript:void(0)" onclick="check_answer('a')">a) www.naver.com</a><br>
<a href="javascript:void(0)" onclick="check_answer('b')">b) www.blueb.co.kr</a><br>
<a href="javascript:void(0)" onclick="check_answer('c')">c) blueb.co.kr</a><br>
<a href="javascript:void(0)" onclick="check_answer('d')">d) blueb.kr</a><br>
</div>

<div id="question4" style="display:none">
<b>4. ���񿡼� �����ϴ� ����Ʈ �̸��� ?</b><br>
<a href="javascript:void(0)" onclick="check_answer('a')">a) ���</a><br>
<a href="javascript:void(0)" onclick="check_answer('b')">b) ���̾Ƹ��</a><br>
<a href="javascript:void(0)" onclick="check_answer('c')">c) �Ƶ�</a><br>
<a href="javascript:void(0)" onclick="check_answer('d')">d) ���丮</a><br>
</div>

<div id="question5" style="display:none">
<b>5. ���� ������ �� �� �´°���?</b><br>
<a href="javascript:void(0)" onclick="check_answer('a')">a) �������ڸ� ���� ����Ʈ</a><br>
<a href="javascript:void(0)" onclick="check_answer('b')">b) ���λ���Ʈ</a><br>
<a href="javascript:void(0)" onclick="check_answer('c')">c) ���ӻ���Ʈ</a><br>
<a href="javascript:void(0)" onclick="check_answer('d')">d) ���θ�</a><br>
</div>

<div id="quizScore" style="display:none">
</div>

</body>
</html>