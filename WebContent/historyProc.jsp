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
font-size: 30px;
text-align:center;
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
var delay=15; //시간설정
var correctAnswers=new Array("유관순","임시정부","장영실","부자세습","시무28조");  //정답

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

function check_answer(){
	var answer = document.x.a1.value;
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
function check_answer2(){
	var answer = document.x2.a2.value;
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
function check_answer3(){
	var answer = document.x3.a3.value;
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
function check_answer4(){
	var answer = document.x4.a4.value;
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
function check_answer5(){
	var answer = document.x5.a5.value;
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
<form name="x">
<div id="question1" style="display:none">
	<b>1. 16세의 나이로 시위운동에 참여하여 만세를 부르고,<br> 아우내 장터에서 독립 만세를 주도한 사람은?</b><br>
	<input type="text" size="30" name="a1" class="in">
	<input type="button" value="확인" onclick="check_answer()" class="btn"><br>
</div></form>

<form name="x2">
<div id="question2" style="display:none">
<b>2. 민족 지도자들이 독립 운동을 보다 효과적으로 펴기 위하여 중국 상하이에 세운 것은?</b><br>
<input type="text" size="30" name="a2" class="in">
	<input type="button" value="확인" onclick="check_answer2()" class="btn"><br>
</div></form>

<form name="x3">
<div id="question3" style="display:none">
<b>3. 조선 전기 세종 때 활동하던 과학자로 우리나라 최조의 물시계인 자격루를 만들었고, <br>세계 최초로 측우기를 발명한 사람은?</b><br>
<input type="text" size="30" name="a3" class="in">
	<input type="button" value="확인" onclick="check_answer3()" class="btn"><br>
</div></form>

<form name="x4">
<div id="question4" style="display:none">
<b>4. 우리나라 최초의 국가 고조선의 정치제도는?</b><br>
<input type="text" size="30" name="a4" class="in" >
	<input type="button" value="확인" onclick="check_answer4()" class="btn"><br>
</div></form>

<form name="x5">
<div id="question5" style="display:none">
<b>5. 성종 때, 재상이었던 최승로가 임금께 올린 정치 개혁안은?</b><br>
<input type="text" size="30" name="a5" class="in">
	<input type="button" value="확인" onclick="check_answer5()" class="btn"><br>
</div></form>


<div id="quizScore" style="display:none" >
</div>

</body>
</html>