<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Photos.aspx.cs" Inherits="Kaminari_Wan_Taiko_Website.Pages.Photos" %>

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
        <h1>Photos</h1>
    </div>
    <br />

    <div class="img">
        <a target="_blank" href="assets/Busker.jpg">
            <img src="assets/Busker.jpg" alt="Busker's Festival (Summer of 2015)'">
        </a>
        <div class="photodesc"><p>Kaminari Wan Taiko's performance at the 2015 Busker's Festival, July 25th, 2015</p></div>
    </div>

     <div class="img">
        <a target="_blank" href="assets/CanadaDay1.jpg">
            <img src="assets/CanadaDay1.jpg" alt="Busker's Festival (Summer of 2015)'">
        </a>
        <div class="photodesc"><p>Kaminari Wan Taiko's </p></div>
    </div>

     <div class="img">
        <a target="_blank" href="assets/CanadaDay2.jpg">
            <img src="assets/CanadaDay2.jpg" alt="Busker's Festival (Summer of 2015)'">
        </a>
        <div class="photodesc"><p>Kaminari Wan Taiko's performance at the 2015 Busker's Festival, July 25th, 2015</p></div>
    </div>

     <div class="img">
        <a target="_blank" href="assets/Japan1.jpg">
            <img src="assets/Japan1.jpg" alt="Busker's Festival (Summer of 2015)'">
        </a>
        <div class="photodesc"><p>Kaminari Wan Taiko's performance at the 2015 Busker's Festival, July 25th, 2015</p></div>
    </div>

     <div class="img">
        <a target="_blank" href="assets/Japan2.jpg">
            <img src="assets/Japan2.jpg" alt="Busker's Festival (Summer of 2015)'">
        </a>
        <div class="photodesc"><p>Kaminari Wan Taiko's performance at the 2015 Busker's Festival, July 25th, 2015</p></div>
    </div>


    <%
        /*
    foreach(string photo in PhotoStruct)
    {
       Response.Write("<div class=\"img\">");
       Response.Write(string.Format("<a target=\"_blank\" href=\"assets/{0}\">", photo.Name));
            Response.Write(string.Format("<img src=\"assets/{0}\" alt=\"{1}\">", photo.Name, photo.Alt));
            Response.Write("</a>");
       Response.Write(string.Format("<div class=\"desc\">{0}</div>", photo.Descript));
       Response.Write("</div>");
    }
         * */

    %>

</body>
</html>