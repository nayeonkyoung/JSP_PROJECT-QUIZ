<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script language="javascript">
var delay=20; //시간설정
var correctAnswers=new Array("a","b","b","b","a");  //정답

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
		document.all.quizScore.innerHTML="당신은 "+(q_num-1)+"문제중 "+score+"개를 맞췄습니다.";
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
		document.all.answerBoard.innerHTML="<font color=blue><b>정답입니다.</b></font>";
	} else {
		document.all.answerBoard.innerHTML="<font color=red><b>땡! 틀렸습니다.</b></font>";
	}
	clock=0;
	clearTimeout(timer);
	timer=setTimeout("hide_question()",700);
}

window.onload=show_question;
</script>
</head>

<body>

제한시간 : <B><span id="timeLeft"></span></B> 초<br>
<br>
<div id="answerBoard"> </div>
<br>

<div id="question1" style="display:none">
	<b>1. 오이는 채소가 아니라 과일이다?</b><br>
	<a href="javascript:void(0)" onclick="check_answer('a')"> ① O</a><br>
	<a href="javascript:void(0)" onclick="check_answer('b')"> ② X</a><br>
</div>

<div id="question2" style="display:none">
	<b>2. 낙타의 혹 속에는 물이 들어있다?</b><br>
	<a href="javascript:void(0)" onclick="check_answer('a')"> ① O</a><br>
	<a href="javascript:void(0)" onclick="check_answer('b')"> ② X</a><br>
</div>

<div id="question3" style="display:none">
	<b>3. 하루라도 책을 읽지 않으면 입에 가시가 돋힌다는 안중근의사의 말이다?</b><br>
	<a href="javascript:void(0)" onclick="check_answer('a')"> ① O</a><br>
	<a href="javascript:void(0)" onclick="check_answer('b')"> ② X</a><br>
</div>

<div id="question4" style="display:none">
	<b>4. 빵은 순수한 우리말이다?</b><br>
	<a href="javascript:void(0)" onclick="check_answer('a')"> ① O</a><br>
	<a href="javascript:void(0)" onclick="check_answer('b')"> ② X</a><br>
</div>

<div id="question5" style="display:none">
	<b>5. 오징어와 게의 다리는 10개이고, 문어와 낙지는 8개이다?</b><br>
	<a href="javascript:void(0)" onclick="check_answer('a')"> ① O</a><br>
	<a href="javascript:void(0)" onclick="check_answer('b')"> ② X</a><br>
</div>

<div id="quizScore" style="display:none">
</div>

</body>
</html>