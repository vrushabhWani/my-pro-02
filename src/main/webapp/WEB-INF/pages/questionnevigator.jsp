<head>
<style>
span{
 width: auto;
  padding: 10px ;
  
	color:black;
 
  font-size:20px;
 

}
 form{
  border:25px solid grey;
  width:50%;
  margin:8px 325px;
  padding:px;
  
  
  }
input[type=radio],textarea {
 
  
  
 padding:50px;
font-size:20px;
 
 
}


button{
  background-color: #9b8f8b;
  color: white;
  padding: 14px 20px;
  margin: 8px 5px;
  border: 5px solid grey;
  cursor: pointer;
  width:30%;
}

button:hover {
  opacity: 0.8;
}

</style>

<script>

var xmlhttp;

	function getRemainingTime()
	{
		xmlhttp= new XMLHttpRequest();

		xmlhttp.onload=showtime;
		
		xmlhttp.open("get","showRemainingTime",true);
		
		xmlhttp.send();
		
	}

	function showtime()
	{
		
		alert(xmlhttp.responseText);
		
		if(xmlhttp.readyState==4 && xmlhttp.status==200){

			//document.questionForm.show.value=xmlhttp.responseText;
			document.questionFrom.show.value=xmlhttp.responseText;
			if(xmlhttp.responseText==0)
			{
				alert("Time Up !!")
				//xmlhttp.open("get","endexam",true);
				window.location.href="score";
			}
			
			
		}
	}

	
	setInterval(getRemainingTime,60000);// 1000 ms - 1 sec  60000ms - 60sec

	function getResponse()
	{
		//var qno = document.questionForm.qno.value;
		var qno=document.questionFrom.qno.value;
		//var question = document.questionForm.question.value;
		var question=document.questionFrom.question.value;
		
		//var submittedAnswer = document.questionForm.option.value;
		var submittedAnswer=document.questionFrom.option.value;
		
		//alert(qno + " " + question + submittedAnswer);

		var xmlhttp = new XMLHttpRequest();

		var data = "?qno="+qno+"&question="+question+"&submittedAnswer="+submittedAnswer;

		xmlhttp.open("get","storeResponse" + data,true);
		
		xmlhttp.send();
	}

	
	
</script>

</head>




<body>


<form name="questionFrom">
<label style="color:blue;background-color:white;font-size:20px;margin:200px"> Total Duration[03]Minutes </label><p>
	<label style="color:blue;background-color:white;font-size:20px"> Remaining Minutes:- </label>
	<input  style="border:none;background-color:white;font-size:20px" type="text" name="show" value="3 minutes"><br><br>
		<input style="border:none;font-size:30px;" type="text" name="qno"
		value="${question.qno}">
	<br>
		<b><input type="text" style="border:none;font-size:30px;width:100%;"value="${question.question}" name="question" ></b>
	<p>
		<input type="radio" name="option" value="${question.option1}"
			onclick="getResponse()"> <span>${question.option1}</span>
	<p>
		<input type="radio" name="option" value="${question.option2}"
			onclick="getResponse()"> <span>${question.option2}</span>
	<p>
		<input type="radio" name="option" value="${question.option3}"
			onclick="getResponse()"> <span>${question.option3}</span>
	<p>
		<input type="radio" name="option" value="${question.option4}"
			onclick="getResponse()"> <span>${question.option4}</span>
	<p>

		<button type="submit" value="<<<-previous" formaction="Previous"><<<-previous</button>

		<button type="submit" value="Next->>>" formaction="Next">Next->>></button><p>
		 <button style="color: black;background: #86423d;width:60%;type="submit"
			value="EndExam" formaction="EndExam">EndExam</button></p>
</form>
</body>
${over} ${end}
