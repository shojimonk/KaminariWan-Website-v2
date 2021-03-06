﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreatePost.aspx.cs" Inherits="Kaminari_Wan_Taiko_Website.Pages.CreatePost" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset = "utf-8"> 
		<title>
			雷湾太鼓 Kaminari Wan Taiko | Create New Post
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
                    <a href="Homepage.aspx">Home</a>
                </td>
                <td>
                    <a href="About.aspx">About Us</a>
                </td>
                <td>
                    <a href="Photos.aspx">Photos</a>
                </td>
                <td>
                    <a href="Login.aspx">Login</a>
                </td>
                <td>
                    <a href="MemberResources.aspx">Member Resources</a>
                </td>
                <td>
                    <a href="Communications.aspx">Communications</a> <br>
                    <a class="sublink" href="CreatePost.aspx">Create A New Post</a>
                </td>
            </tr>
        </table>
    </div>
    <!--End Of Navigation Panel-->

	<div class="box">
	<h1>Create A New Post</h1>
	</div>

<!--Post Creation Area-->
	<div id="postcreation">
	<form action="CreatePost.html" method="POST" target="_self" accept-charset="UTF-8" enctype="application/x-www-form-urlencoded" autocomplete="off" novalidate>
		<fieldset>
			<legend>Create A Post</legend>
			Subject</br>
			<input type="text" name="postsubject" maxlength="48" size="48"></br>
			Content</br>
			<textarea name="postcontent" cols="50" rows="10"></textarea></br>
			</br>
			<input type="submit" value="Login">
		</fieldset>
	</form>
	</div>
<!-- End of Post Creation Area-->


</body>
</html>