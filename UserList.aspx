<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserList.aspx.cs" Inherits="UserList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/UserList.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <div class="wrapper">
        <%=action %>
        <table>
            <tr>
                <th>Id</th>
                <th>Username</th>
                <th>Password</th>
                <th>Admin</th>
                <th>City</th>
                <th>Birth Year</th>
                <th>Gender</th>
                <th>Profile Image</th>
                <th>Registration Date</th>
                <th>Phone Number</th>
                <th>XP</th>
                <th>E-Mail</th>
                <th>Edit</th>
                <th>Delete User</th>              
            </tr>
            <%=UserTable %>
        </table>
       </div>
    </center>
</asp:Content>

