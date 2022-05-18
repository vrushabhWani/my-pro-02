<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: white;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password]
, input[type=number], input[type=email], input[type=date] {
  width: 100%;
  padding: 15px;
  margin: 10px 0 5px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus,
input[type=number]:focus,
input[type=email]:focus,
input[type=date]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #170d03;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>

<form style=" border:20px solid grey;
  width:50%;
  margin:10px 325px 8px;
 ">
  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form.</p>
    <hr>

    
   UserName: <input type="text" name="username"
			placeholder="Enter username" required>
		<p>

			Password: <input type="password" name="password"
				placeholder="Enter password">
		<p>
		

		MobileNumber: <input type="number" name="mobilenumber"
			placeholder="Enter mobilenumber"><br>
		<p> <label for="email">Email</label>: <input type=email name="emailid"
			placeholder="Enter emailId"><br>
		<p>DateOfBirth : <input type=date name="dateofbirth"
			placeholder="Enter DateOfBirth"><br>
		<p>
    <hr>
    <p>Already have an account? <a href="showLoginPage">Sign in</a>.</p>
    <button type="submit" class="registerbtn"formaction="register">Register</button>
  </div>
  
 
</form>

</body>
</html>
	
	

</body>


