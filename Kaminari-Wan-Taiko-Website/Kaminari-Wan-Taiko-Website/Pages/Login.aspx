<%@ Page Language="C#" ValidateRequest="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>雷湾太鼓 Kaminari Wan Taiko Member Login
    </title>
    <link rel="stylesheet" type="text/css" href="css/css.css">
</head>
<body>

        <%
        
        if(Request.QueryString["Log"] == "TRUE")
        {
            try
            {
                string inPass = Request.Form["password"];
                bool successful = false;
                string hashPass = Kaminari_Wan_Taiko_Website.App_Code.Hasher.HashThis(inPass);
                successful = Kaminari_Wan_Taiko_Website.App_Code.LoginClass.Verify(Request.Form["username"], hashPass);
                if (successful)
                {
                    Response.BufferOutput = true;
                    Response.Redirect("MemberResources.aspx");
                }
            }
            catch(Exception error)
            {
                System.Diagnostics.Debug.WriteLine(error.Message);
                Response.Write("An Error occured. Please debug to see the cause.");
            }
        }
        
    %>

    <div class="box">
        <h1 id="mainheader">雷湾太鼓 Kaminari Wan Taiko
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
        <h1>Member Login</h1>
    </div>

    <!--Login Area-->
    <div id="loginpane">
        <form action="Login.aspx" method="POST" target="_self" accept-charset="UTF-8" enctype="application/x-www-form-urlencoded" autocomplete="off" novalidate>
            <fieldset>
                <legend>Login Information</legend>
                Username:<br>
                <input type="text" name="username"><br>
                Password:<br>
                <input type="password" name="password"><br>
                <br>
                <input type="submit" formaction="Login.aspx?Log=TRUE" value="Login">
            </fieldset>
        </form>
    </div>
    <!-- End of Login Area-->

</body>
</html>
