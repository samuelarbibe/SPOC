<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/Shop.css" rel="stylesheet" />
    <script src="javascript/Shop.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <nav class="smallNav">
            <div class="dropdown" style="float:right;">
              <button class="dropbtn" onclick="myFunction(this)">
                  <div class="container">
                      <div class="bar1"></div>
                      <div class="bar2"></div>
                      <div class="bar3"></div>
                    </div>
              </button>
                  <div class="content_dropdown" id="content">
                    <a href="Shop.aspx">SHOP</a>
                    <a href="About.aspx">ABOUT</a>
                    <a href="Contact.aspx">CONTACT</a>
                  </div>
            </div>
        </nav>
        <div class="top_container">
            <button class="controls" id="previous">&#9665</button>
            <button class="controls" id="next">&#9655</button>
                <ul id="slides">
                    <li class="slide showing"><img src="Images/specialized_enduro_home.jpg" style="width:100%;position:relative;z-index:-10;" />
                        <div class="thumbnail">
                            <div class="header">
                                <span>NEW</span>
                            </div>
                            <br />
                            <br />
                            <h1>
                                2017 S-Works Enduro 650b
                            </h1>
                            <br />
                            <span class="info">Climb fast, Descend Faster. With its all new Ohlins 160mm suspension, SRAM Eagle Drivetrain and a lightweight durable Carbon Frame -  This is the ultimate Value Enduro Bike.</span>
                            <a href="Product.aspx?ProductID=7">LEARN MORE</a>
	                    </div>
                    </li>
                    <li class="slide"><img src="Images/cannondale_home.jpg" style="width:100%;position:relative;z-index:-10;" />
                        <div class="thumbnail" style="left:0;right:0;top:150px;width:600px;height:2000px;text-align:center;margin:0 auto;">
                            <br />
                            <br />
                            <h1 style="font-size:80px;padding-right:25px;text-align:left;">
                                THE DOCTOR
                            </h1>
                            <h1 style="font-size:80px;padding-right:25px;text-align:right;">
                                IS BACK
                            </h1>
                            <br />
                            <span style="width:350px;text-align:center;margin-left:130px;" class="info">Full-blown Enduro beast machine.<br /> 170mm front, 165-130mm rear. Slack and ready to get nasty.</span><br /><br /><br /><br />
                            <a style="text-align:center;margin-left:210px;" href="Product.aspx?ProductID=20">LEARN MORE</a>
	                    </div>
                    </li>
                    <li class="slide"><img src="Images/cannondale_2_home.jpg" style="width:100%;position:relative;z-index:-10;" />
                        <div class="thumbnail">
                            <div class="header">
                                <span>NEW</span>
                            </div>
                            <br />
                            <br />
                            <h1>
                                New Cannondale Jekyll
                            </h1>
                            <br />
                            <span class="info">Full-blown Enduro beast machine. 170mm front, 165-130mm rear. Slack and ready to get nasty.</span>
                            <a href="Product.aspx?ProductID=20">LEARN MORE</a>
	                    </div>
                    </li>
                </ul>
        <div class="slide_btn_wrapper">
            <button id="0" onclick="goToSlide(this.id + 1);">&#9673</button>
            <button id="1" onclick="goToSlide(this.id + 1);" >&#9678</button>
            <button id="2" onclick="goToSlide(this.id + 1);" >&#9678</button>
        </div>
    </div>
        <div class="container" id="anchor">
            <nav class="container_nav">
                <ul>
                    <li id="Cross-Country" onclick="division(this.id)">
                        Cross Country
                    </li>
                    <li id="Trail" onclick="division(this.id)">
                        Trail
                    </li>
                    <li id="E-bike" onclick="division(this.id)">
                        E-Bike
                    </li>
                    <li id="Fatbike" onclick="division(this.id)">
                        Fatbike
                    </li>
                    <li id="Downhill" onclick="division(this.id)">
                        Downhill
                    </li>
                </ul>
            </nav>
            <div class="wrapper">
                <div class="procuct_head">
                  <input id="search" class="search" type="text" onkeyup="search()" placeholder="Bikes" name="search" />
                </div>

                <div>
                    <div class="filters_open" onclick="toggle()">
                        <p>
                            <span  style="float: left">FILTERS</span>
                            <span id="icon"  style="float: right">&#9660</span>
                        </p>
                    </div>

                    <div id="filters" class="filters">
                        <table border="0" id="filter_table">

                            <tr>
                                <th colspan="2">GENDER</th>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="Male" onclick="Filter(this.id)" /><label for="Male"></label></td>
                                <td>Male</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="Female" onclick="Filter(this.id)" /><label for="Female"></label></td>
                                <td>Female</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="Unisex" onclick="Filter(this.id)" /><label for="Unisex"></label></td>
                                <td>Unisex</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="Boys" onclick="Filter(this.id)" /><label for="Boys"></label></td>
                                <td>Boys</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="Girls" onclick="Filter(this.id)" /><label for="Girls"></label></td>
                                <td>Girls</td>
                            </tr>
                            <tr class="divider">
                                <td colspan="2"><hr /></td>
                            </tr>
                            <tr>
                                <th colspan="2">BRAND</th>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="Specialized" onclick="Filter(this.id)" /><label for="Specialized"></label></td>
                                <td>Specialized</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="Trek" onclick="Filter(this.id)" /><label for="Trek"></label></td>
                                <td>Trek</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="Canyon" onclick="Filter(this.id)" /><label for="Canyon"></label></td>
                                <td>Canyon</td>
                            </tr>
                            <tr class="divider">
                                <td colspan="2"><hr /></td>
                            </tr>
                            <tr>
                                <th colspan="2">PRICE</th>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="200_500" onclick="Filter(this.id)" /><label for="200_500"></label></td>
                                <td>$200-$499.99</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="500_1000" onclick="Filter(this.id)" /><label for="500_1000"></label></td>
                                <td>$500-$999.99</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="1000_2000" onclick="Filter(this.id)" /><label for="1000_2000"></label></td>
                                <td>$1,000-$1,999.99</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="2000_3000" onclick="Filter(this.id)" /><label for="2000_3000"></label></td>
                                <td>$2,000-$2,999.99</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="3000_4000" onclick="Filter(this.id)" /><label for="3000_4000"></label></td>
                                <td>$3,000-$3,999.99</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="4000_5000" onclick="Filter(this.id)" /><label for="4000_5000"></label></td>
                                <td>$4,000-$4,999.99</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="5000_7500" onclick="Filter(this.id)" /><label for="5000_7500"></label></td>
                                <td>$5,000-$7,499.99</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="7500_10000" onclick="Filter(this.id)" /><label for="7500_10000"></label></td>
                                <td>$7,500-$9,999.99</td>
                            </tr>
                            <tr class="divider">
                                <td colspan="2"><hr /></td>
                            </tr>
                            <tr>
                                <th colspan="2">FRAME MATERIAL</th>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="Aluminium" onclick="Filter(this.id)" /><label for="Aluminium"></label></td>
                                <td>Aluminium</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="Carbon" onclick="Filter(this.id)" /><label for="Carbon"></label></td>
                                <td>Carbon</td>
                            </tr>
                            <tr class="divider">
                                <td colspan="2"><hr /></td>
                            </tr>
                            <tr>
                                <th colspan="2">WHEEL SIZE</th>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="27_5" onclick="Filter(this.id)" /><label for="27_5"></label></td>
                                <td>27.5"</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="29" onclick="Filter(this.id)" /><label for="29"></label></td>
                                <td>29"</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="29+" onclick="Filter(this.id)" /><label for="29+"></label></td>
                                <td>29+</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="26" onclick="Filter(this.id)" /><label for="26"></label></td>
                                <td>26"</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="26_fat" onclick="Filter(this.id)" /><label for="26_fat"></label></td>
                                <td>26" fat</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="27_5_fat" onclick="Filter(this.id)" /><label for="27_5_fat"></label></td>
                                <td>27.5" fat</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="24" onclick="Filter(this.id)" /><label for="24"></label></td>
                                <td>24" kids'</td>
                            </tr>
                            <tr class="divider">
                                <td colspan="2"><hr /></td>
                            </tr>
                            <tr>
                                <th colspan="2">SUSPENSION</th>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="100mm" onclick="Filter(this.id)" /><label for="100mm"></label></td>
                                <td>Full suspnesion (100mm)</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="110mm" onclick="Filter(this.id)" /><label for="110mm"></label></td>
                                <td>Full suspnesion (110mm)</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="120mm" onclick="Filter(this.id)" /><label for="120mm"></label></td>
                                <td>Full suspnesion (120mm)</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="140mm" onclick="Filter(this.id)" /><label for="140mm"></label></td>
                                <td>Full suspnesion (140mm)</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="150mm" onclick="Filter(this.id)" /><label for="150mm"></label></td>
                                <td>Full suspnesion (150mm)</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="160mm" onclick="Filter(this.id)" /><label for="160mm"></label></td>
                                <td>Full suspnesion (160mm)</td>
                            </tr>
                            <tr>
                                <td><input class="checkbox" type="checkbox" id="hardtail" onclick="Filter(this.id)" /><label for="hardtail"></label></td>
                                <td>Hardtail</td>
                            </tr>
                        </table>
                    </div>
                </div>

                <ul id="products" class="products"><!--picture ratio : ~ 25/14-->
                    <%=content %>
                </ul>
            </div>
        </div>
    </center>
</asp:Content>