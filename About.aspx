<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link href="css/About.css" rel="stylesheet" />
    <script src="javascript/About.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center style="width: 100%">
        <div class="main_wrapper">
            <div class="landing">
                <h1>spoc</h1>
            </div>
            <div class="thumbnail" id="1">
                <img id="img1" class="bike_img" src="Images/Sender_Home.jpg" />
                <div class="info" id="info1">
                    <h1>Who Are We?</h1>
                    <p class="info_text"><span>spoc</span> is a high-end online retail website selling bicycles. Based in Raanana, in Israel, in 1999 <span>spoc</span> is the largest online bike shop in the world.<br />We specialise in selling equipment and apparel for various disciplines of cycling including mountain biking, BMX, cyclocross, road cycling and triathlon equipment.</p>
                </div>
            </div>
            <div class="thumbnail" id="2">
                <img id="img2" class="bike_img" src="Images/Sender_frame_home.jpg" />
                <div class="info" id="info2">
                    <h1>Our Goal</h1>
                    <p class="info_text">Our mission is simple—to be the brand of choice for discerning riders. Founded on performance and fueled by innovation, our focus on the rider and their needs is our constant. From seasoned pros and weekend warriors, to kids and commuters—if you ride, we’re for you.We believe bikes have the power to change lives. This simple truth drives us to be—and do—better. The passion we have for sharing our love of bikes with the world can be seen in those who choose to work here, and the people and organizations we partner with.</p>
                </div>
            </div>
            <div class="thumbnail" id="3">
                <div class="info" id="info3">
                    <h1>Stay In Touch!</h1>
                    <div class="contact_form">
                        <table border="0">
                            <tr>
                                <td class="head">MECHANICAL SUPPORT</td>
                                <td><span>PHONE:</span><br /><a>054-7994407</a></td>
                                <td><span>E-MAIL:</span><br /><a>mech.support@spoc.com</a></td>
                            </tr>
                            <tr>
                                <td class="head">SHIPPING & RETURN</td>
                                <td><span>PHONE:</span><br /><a>058-520455</a></td>
                                <td><span>E-MAIL:</span><br /><a>ship.support@spoc.com</a></td>
                            </tr>
                            <tr>
                                <td class="head">SPOC HQ</td>
                                <td><span>ADRESS:</span><br /><a> Ostrovsky St 26, Ra'anana, Israel</a></td>
                                <td><span>POSTCODE:</span><br /><a>TD6 0RR</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <a id="anchor" href="anchor" style="position:absolute;top:2500px"></a>
        </div>
    </center>
</asp:Content>