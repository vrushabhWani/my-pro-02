<head>
<body>
<style>
form{
border:  10px solid grey;
  cursor: pointer;
  margin: 25px 325;
padding: 14px 20px;
width:50%;
}
body{
 color: 2a8cda;
background-color:;
}
h1
{
padding: 14px 20px;

  cursor: pointer;
 margin: 8px 325;
  border: ;
  cursor: pointer;
  width:40%;


}
button:hover,select:hover {
  opacity:0.5;
}
select {

background-color: #eceff1;
  color: black;
  padding: 14px 20px;
  margin: 25px 0;
  border:10px solid grey ;
  cursor: pointer;
  width:50%;
  font-size:20px;
}
button{
background-color: #bdbdbd;
  color: black;
  padding: 14px 20px;
  margin: 25px 0;
  cursor: pointer;
  width:35%;
	border:1px solid black;


}



	
</style>




<script>
	function display(x)
	{
		if(x.value!='actionNoRequired')


	{
		var xmlhttp = new XMLHttpRequest();

		xmlhttp.open("get", "getQuestions?subject=" + x.value, true);

		xmlhttp.send();

	}
	}
</script>



</head>




<h1>${get}</h1>
<p>
<form>
	<select name="selectedSubject" onchange="display(this)">
				
		<b><option value="actionNoRequired"><b>Select Subject</b></option></b>
		<option value="gk">General Knowledge</option>
		<option value="math">Mathematics</option>
		</select><p>
		<button type="submit" value="start Exam" formaction="startExam" ><b> Start Exam</b></button>

</form>
${msg}

	
		 


	</body>