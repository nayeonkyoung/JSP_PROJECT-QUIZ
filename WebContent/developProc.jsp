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
var delay=20; //시간설정
var correctAnswers=new Array("b","a","c","c","a");  //정답

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
<br><br>
제한시간 : <B><span id="timeLeft"></span></B> 초<br>
<br>
<div id="answerBoard"> </div>

<div id="question1" style="display:none">
	<b>1. 자바에서 메소드 오버로딩에 대한 설명으로 틀린 것은?</b><br>
	<a href="javascript:void(0)" onclick="check_answer('a')" class="p1"> ① 동일 클래스 내에서 발생한다.	</a><br><br>
	<a href="javascript:void(0)" onclick="check_answer('b')" class="p1"> ② 매개변수의 형이나 개수가 동일해야 한다.</a><br><br>
	<a href="javascript:void(0)" onclick="check_answer('c')" class="p1"> ③ 다형성을 지원하기 위한 장치이다.</a><br><br>
	<a href="javascript:void(0)" onclick="check_answer('d')" class="p1"> ④ 메소드 이름이 동일해야 한다.</a><br><br>
</div>

<div id="question2" style="display:none">
<b>2.다음 예제 프로그램의 결과는 무엇인가?</b><br><img src="img/d2.png" id="logo" width="800px" height="350px"> <br>
<a href="javascript:void(0)" onclick="check_answer('a')" class="p1">① Hello</a><br><br>
<a href="javascript:void(0)" onclick="check_answer('b')" class="p1">② Hello Java!</a><br><br>
<a href="javascript:void(0)" onclick="check_answer('c')" class="p1">③ 컴파일 에러</a><br><br>
<a href="javascript:void(0)" onclick="check_answer('d')" class="p1">④ 실행중 예외 발생</a><br><br>
</div>

<div id="question3" style="display:none">
<b>3. Java.lang 패키지는 자바 프로그램에서 ( )문을 사용하여 포함시키지 않아도 자동적으로 포함되는 패키지이다. <br>이 패키지는 자바 프로그램의 기본이 되는 클래스들과 인터페이스들을 제공하고 있어 자바 프로그램에서 많이 사용한다.</b><br>
<a href="javascript:void(0)" onclick="check_answer('a')" class="p1">① extends</a><br><br>
<a href="javascript:void(0)" onclick="check_answer('b')" class="p1">② package</a><br><br>
<a href="javascript:void(0)" onclick="check_answer('c')" class="p1">③ import</a><br><br>
<a href="javascript:void(0)" onclick="check_answer('d')" class="p1">④ class</a><br><br>
</div>

<div id="question4" style="display:none">
<b>4. 다음은 자바의 예외 처리에 대한 설명이다. 틀린 것은?</b><br>
<a href="javascript:void(0)" onclick="check_answer('a')" class="p1"> ① try~catch~finally 문에 여러 개의 catch문이 올 수 있다.</a><br><br>
<a href="javascript:void(0)" onclick="check_answer('b')" class="p1"> ② finally문은 생략 가능하다.</a><br><br>
<a href="javascript:void(0)" onclick="check_answer('c')" class="p1"> ③ 모든 메소드 마다 예외의 유형을 정의하여야 한다.</a><br><br>
<a href="javascript:void(0)" onclick="check_answer('d')" class="p1"> ④ 프로그래머가 지정하지 않은 예외는 디폴트 예외 처리기가 처리한다.</a><br><br>
</div>





<div id="question5" style="display:none">
<b>5.다음 예제 프로그램의 결과는 무엇인가?</b><br><img src="img/d5.png" id="logo" width="800px" height="400px"><br>
<a href="javascript:void(0)" onclick="check_answer('a')" class="p1">① 컴파일 에러난다.</a><br>
<a href="javascript:void(0)" onclick="check_answer('b')" class="p1">② exception 발생</a><br>
<a href="javascript:void(0)" onclick="check_answer('c')" class="p1">③ 10 - 20 - 30 으로 출력된다.</a><br>
<a href="javascript:void(0)" onclick="check_answer('d')" class="p1">④ -40 으로 출력된다.</a><br>
</div>

<div id="quizScore" style="display:none">
</div>

</body>
</html>