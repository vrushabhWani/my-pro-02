<head>

<style >
input[type=text]{
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
button {
  background-color: #545034;
  color: black;
   padding:  0 5px 2px 1px;
  margin: 8px 0;
  border: 8px solid grey;
  cursor: pointer;
  width:35%;
}

button:hover {
  opacity: 0.8;
}
form{
border:5px Solid grey;
margin:8px 325px;



}

a:link{
  background-color: #545034;
  color: white;
  padding: 5px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border: 8px solid ;
}

a:hover, a:active {
  background-color: #545034;
    opacity: 0.8;
}


</style>


</head>










 <center><h1>welcome Admin</h1>
<form>
	<input type="text" name="qno" placeholder="Enter question number"
		required>
	<p>
		<input type="text" name="question" placeholder="Enter question"
			required>
	<p>
		<input type="text" name="option1" placeholder="Enter option" required>
	<p>
		<input type="text" name="option2" placeholder="Enter option" required>
	<p>
		<input type="text" name="option3" placeholder="Enter option" required>
	<p>
		<input type="text" name="option4" placeholder="Enter option" required>
	<p>
		<input type="text" name="answer" placeholder="Enter answer" required>
	<p>
		<input type="text" name="subject" placeholder="Enter subject" required>
	<p>
	<h3>Click here for addQuestion</h3>
	<br> <button type="submit" value="addQuestion"
		formaction="addQuestion"><h1>Add Question</h1></button>
	<h1><a href="showLoginPage" style="text-decoration:none;color:black; border: 8px solid grey ;">Sign Out</a></h1>








<h1 style="color:blue;">${add}</h1>
</form>

</center>