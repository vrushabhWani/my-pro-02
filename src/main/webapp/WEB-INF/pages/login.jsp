${message}
<p>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;
 background-image: url("jk.jpg");
}


input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}


button {
  background-color: #545034;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: 9px solid grey;
  cursor: pointer;
  width:100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  h1{
  width: 100%;
  padding: 12px 200px;
  margin: 8px 325;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  
  
  }
  form{
  border:50px solid grey;
  width:20%;
  margin:200;
  padding:50px;
  
  
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>

</head>
<body><img alt="image not show" src="User_Avatar_2.png" width="500" heigth="300"/>
<form style=" border:50px solid grey;
  width:25%;
  margin:0px 0px 0px 450px;
  padding:25">
  
<center><h1 >Sign in for Student&Admin</h1></center>
<hr>
  <div class="container">
	UserName: <input type="text" name="username"
		placeholder="Enter username" required><br>
	<br> Password: <input type="password" name="password"
		placeholder="Enter password">
	<p>
	<br> <button type="submit" value="login" formaction="login"formmethod="post">Sign In</button> <p>
  <input type="checkbox" checked="checked" name="remember"> Remember me
   
  </div>
  <div class="container" style="background-color:#f1f1f1">
    <button type="submit" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="password">password?</a></span>
  </div>

		<p>Create a new account? <a href="showRegisterPage" style="text-decoration:none">Sign Up</a>.</p>

</form>

</body>
</html>
${error}  