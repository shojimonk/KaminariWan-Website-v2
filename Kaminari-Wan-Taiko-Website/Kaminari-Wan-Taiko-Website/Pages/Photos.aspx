﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Photos.aspx.cs" Inherits="Kaminari_Wan_Taiko_Website.Pages.Photos" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        雷湾太鼓 Kaminari Wan Taiko | Photos
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
                    <a href="About.html">About Us</a>
                </td>
                <td>
                    <a href="Photos.html">Photos</a>
                </td>
                <td>
                    <a href="Login.html">Login</a>
                </td>
                <td>
                    <a href="Videos.html">Member Resources</a>
                </td>
                <td>
                    <a href="Communications.html">Communications</a> <br>
                    <a class="sublink" href="CreatePost.html">Create A New Post</a>
                </td>
            </tr>
        </table>
    </div>
    <!--End Of Navigation Panel-->

    <div class="box">
        <h1>Photos</h1>
    </div>

    <%
    foreach(string photo in PhotoStruct)
    {
       Response.Write("<div class=\"img\">");
       Response.Write(string.Format("<a target=\"_blank\" href=\"assets/{0}\">", photo.Name));
            Response.Write(string.Format("<img src=\"assets/{0}\" alt=\"{1}\" width=\"whatever\" height=\"whatever\">", photo.Name, photo.Alt));
            Response.Write("</a>");
       Response.Write(string.Format("<div class=\"desc\">{0}</div>", photo.Descript));
       Response.Write("</div>");
    }

    %>

</body>
</html>