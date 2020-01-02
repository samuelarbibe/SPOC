<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/Register.css" rel="stylesheet" />
    <script src="javascript/Register.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form action="Register.aspx" method="post" onsubmit="return check();">
        <img class="img_bike" src="Images/yeti_signup.jpg" style="width:60%;margin-top:100px;"/>
        <div style="float:right;margin-right:350px;margin-top:150px;">
        <center>
        <h1 style=" font-family:'type2';letter-spacing:3px;color:black">SIGN UP</h1>
            <div style="width:300px;">
            <input id="username" class="username" style="margin-top:50px;" type="text" placeholder="*username" name="username" required="required" /><br />
            <input id="password1" class="password" type="password" placeholder="*password" name="password1" required="required" /><br />
            <input id="password2" class="password" type="password" placeholder="*confirm password" name="password2" required="required" /><br />
              <select class="info" name="city" style="width:300px;" id="sel1" required="required">
                <option>*City</option>
                <option value="1">Raanana</option>
                <option value="2">Haifa</option>
                <option value="3">jerusalem</option>
                <option value="4">Kfar-Sava</option>
                <option value="5">Eilat</option>
                <option value="6">Tel-Aviv</option>
              </select><br />
            <input id="age" class="info" type="text" placeholder="*age" name="age" required="required" /><br />

            <input id="ProfilePicture" class="info" type="text" placeholder="Profile Image" name="PI"/><br />
            <input id="Email" class="info" type="text" placeholder="E-Mail" name="Email" /><br />
            <input id="PhoneNumber" class="info" type="text" placeholder="Phone Number" name="PN" /><br /><br />

            <div style="margin-left:20px;">
                <input class="checkbox" id="Male" type="radio" value="Male" name="gender" required="required" />
                <label for="Male">Male</label><br /><br />

                <input class="checkbox" id="Female" type="radio" value="Female" name="gender" required="required" />
                <label for="Female">Female</label><br /><br />
            </div>
                  
            <input class="btn" type="reset" value="RESET" /><br />
            <input class="btn" name="submit" type="submit" value="SUBMIT" /><br />
            <a href="Login.aspx" class="link"><span style="color:grey;text-decoration:none;">go back to the Login page</span></a>
            <div id="alert" style="width:220px;margin-top:10px;display:none;color:red" class="alert alert-danger" role="alert">
                <span id="error"><%=msg %></span>
            </div>
            </div>
        </center>
            </div>
    </form>
</asp:Content>