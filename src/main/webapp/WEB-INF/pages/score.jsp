<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
table, th, td {
	border: 1px solid green;
}

th {
	padding: 10;
	
}

td {
	padding: 10;
	color: red;
}
a:link, a:visited {
  background-color: #545034;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border: 8px solid grey;
}

a:hover, a:active {
  background-color: #545034;
    opacity: 0.8;
}


table {
	
}
</style>


<center>
	<h1>Thank You</h1>





	<table>

		<tr>
			<th>qno</th>
			<th>question</th>
			<th>submittedAnswer</th>
			<th>correctAnswer</th>
		</tr>

		<c:forEach var="answer" items="${submittedDetails.values()}">
			<tr>
				<td>${answer.qno}</td>
				<td>${answer.question}</td>
				<td>${answer.submittedAnswer}</td> 
				<td>${answer.correctAnswer}</td>
			</tr>



		</c:forEach>
	</table>
	<h1>your score is ${score}</h1>
	<center>
	<h1>Go For 

		<a href="showLoginPage" style="text-decoration:none;">Sign In</a></h1>