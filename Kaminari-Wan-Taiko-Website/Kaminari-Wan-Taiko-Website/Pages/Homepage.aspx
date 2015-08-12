﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Kaminari_Wan_Taiko_Website.Pages.Homepage" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset = "utf-8"> 
		<title>
			雷湾太鼓 Kaminari Wan Taiko | Homepage
		</title>
		<link rel="stylesheet" type="text/css" href="css/css.css">
	</head>
<body>
	<div class="box">
		<h1 id="mainheader">
			雷湾太鼓 Kaminari Wan Taiko
		</h1>
		<p id="subheader">
			Thunder Bay's Only Taiko Group
		</p>
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
	<h1>Homepage</h1>
	</div>
<!--Content Panel-->
	

    <div class="img">
        <a target="_blank" href="assets/Busker.jpg">
            <img src="assets/Busker.jpg" alt="Busker's Festival (Summer of 2015)'" width="256" height="192">
        </a>
        <div class="photodesc">Kaminari Wan Taiko's performance at the 2015 Busker's Festival, July 25th, 2015</div>
    </div>


</body>
</html>