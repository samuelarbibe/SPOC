<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/Login.css" rel="stylesheet" />
    <script src="javascript/Login.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form method="post" action="<%=Action %>" onsubmit="return check();">
        <img class="img_bike" src="Images/yeti_login.jpg" style="width: 60%; margin-top: 100px;" />
        <div class="main" style="float: right; margin-right: 350px; margin-top: 150px;">
            <center>
        <h1 style="font-family:'type2';color:black;margin-top:250px;letter-spacing:3px;">Login</h1>
            <input class="username" style="margin-top:100px;" type="text" id="username" placeholder="username" name="username" required="required" /><br />
            <input class="password" type="password" placeholder="password" name="password" required="required" /><br />
            <input  class="reset" type="reset" value="reset" /><br />
            <input class="submit" name="submit" type="submit" value="SUBMIT" /><br />
            <a href="Register.aspx" class="link"><span class="register">SIGN UP</span></a><br />
            <div id="alert" class="alert alert-danger" role="alert">
                <span style="display:none;" id="error"></span>
                <span ><%=msg %></span>
            </div>
            </center>
        </div>
    </form>
</asp:Content>