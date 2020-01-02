<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/Product.css" rel="stylesheet" />
    <script src="javascript/Product.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
                <%=content %>
            <div class="info_wrapper">
                <%=table %>
            </div>
    </center>
    <div id="snackbar">In order to make a purchase, You have to be Logged-in. <br/> <a href="Login.aspx?ProductID=<%=productId%>">Click Here</a> to Login.</div>
</asp:Content>