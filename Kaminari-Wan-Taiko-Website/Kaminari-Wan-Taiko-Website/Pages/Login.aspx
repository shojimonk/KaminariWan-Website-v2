﻿<%@ Page Language="C#" validateRequest="false"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset = "utf-8"> 
		<title>
			雷湾太鼓 Kaminari Wan Taiko Member Login
		</title>
		<link rel="stylesheet" type="text/css" href="css/css.css">
	</head>
<body>
	<div class="box">
		<h1 id="mainheader">
			雷湾太鼓 Kaminari Wan Taiko
		</h1>
		<p id="subheader">Thunder Bay's Only Taiko Group</p>
	</div>

<!--Main Navigation Panel-->
	<div class="box" id="navi">
		<table>
			<tr>
				<td>
					<a href="Homepage.html">Home</a>
				</td>
				<td>
					<a href="Login.html">Login</a>
				</td>
				<td>
					<a href="Videos.html">Videos</a>
				</td>
				<td>
					<a href="Communications.html">Communications</a> </br>
					<a class="sublink" href="CreatePost.html">Create A New Post</a>
				</td>
			</tr>
		</table>
	</div>
<!--End Of Navigation Panel-->

	<div class="box">
	<h1>Member Login</h1>
	</div>

<!--Login Area-->
	<div id="loginpane">
	<form action="Login.html" method="POST" target="_self" accept-charset="UTF-8" enctype="application/x-www-form-urlencoded" autocomplete="off" novalidate>
		<fieldset>
			<legend>Login Information</legend>
			Username:</br>
			<input type="text" name="username"></br>
			Password:</br>
			<input type="password" name="password"></br>
			</br>
			<input type="submit" value="Login">
		</fieldset>
	</form>
	</div>
<!-- End of Login Area-->

</body>
</html>