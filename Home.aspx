<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="Navbar.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <style>
        .head {
            margin-top: -100px;
            width: 100%;
            display: inline-block;
            position: relative;
        }

        .shopBtn {
            background-color: transparent;
            letter-spacing: 3px;
            font-family: 'hard';
            font-size: 30px;
            margin-top: 60px;
            border: 0;
            transition: .3s;
        }

            .shopBtn:hover {
                background-color: #f1f1f1;
                transform: scale(1.1);
            }

        .wrapper1 {
            width: 100%;
            height: 800px;
            margin-top: 250px;
        }

            .wrapper1 img {
                width: 100%;
            }

        .name {
            position: relative;
            padding-top: 200px;
            margin-top: 0px;
            color: white;
            padding-bottom: 50px;
            font-size: 90px;
        }

        .underName {
            color: white;
            padding-bottom: 50px;
            font-size: 20px;
        }

        .wrapperN1 {
            width: 1200px;
            height: 750px;
            margin-top: -10px;
            margin-bottom: 150px;
            padding-top: 70px;
            background-color: #fff;
            overflow: hidden;
        }

        .contentHead {
            font-family: "type2";
            color: black;
            float: left;
            margin-top: 60px;
            margin-left: 110px;
            font-size: 40px;
        }

        hr {
            width: 70%;
            margin-top: 85px;
            margin-right: 70px;
            height: 4px;
            background-color: black;
            position: relative;
        }

        .shopWrapper {
            width: 88%;
            height: 70%;
            background-color: #fff;
            margin-top: 70px;
            overflow: hidden;
        }

        .textArea {
            position: relative;
            font-family: 'mada', sans-serif;
            width: 400px;
            height: 400px;
            background-color: white;
            margin-top: 40px;
            margin-left: -556px;
        }

            .textArea p {
                padding-top: 50px;
                width: 310px;
            }

        .shopImg {
            position: absolute;
            width: 600px;
            height: 450px;
            left: 405px;
            bottom: 0px;
        }

        h2 {
        }

        .wrapperN2 {
            margin-top: 70px;
            margin-bottom: 200px;
            width: 1200px;
            height: 900px;
            background-color: #fff;
            overflow: hidden;
        }

        .forumImg {
            position: absolute;
            width: 350px;
            height: 350px;
            right: -480px;
            top: 20px;
        }

        .divider {
            width: 100%;
            height: 600px;
            padding-right: 10px;
            background-image: url(Images/home_pic2.jpg);
            background-size: 2100px;
        }

        .thumbnail {
            top: 400px;
            left: 200px;
            position: absolute;
            width: 700px;
            height: 300px;
        }

            .thumbnail h1 {
                color: white;
                font-family: 'hard';
                letter-spacing: 2px;
                font-size: 40px;
                text-align: left;
            }

            .thumbnail .header {
                border: 1px solid white;
                width: 150px;
                color: white;
                font-family: 'type2';
                letter-spacing: 3px;
                float: left;
                padding: 6px;
            }

            .thumbnail .info {
                width: 500px;
                color: white;
                letter-spacing: 2px;
                float: left;
                text-align: left;
            }

            .thumbnail a {
                z-index: 9999;
                font-family: 'hard';
                float: left;
                text-align: left;
                margin-top: 120px;
                color: white;
                font-size: 20px;
                letter-spacing: 3px;
                transition: .3s;
                padding: 5px 10px;
            }

                .thumbnail a:hover {
                    transform: scale(1.1);
                    background-color: rgba(179, 179, 179, 0.60);
                }
        
        .top_container{
            display:block;
            position:relative;
            height:1100px;
            overflow:hidden;
        }

        #slides {
            position: relative;
            height: 100%;
            width: 100%;
            padding: 0px;
            margin: 0px;
            list-style-type: none;
        }

        .slide {
            position: absolute;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            opacity: 0;
            z-index: 1;
            transition: opacity 1s;
        }

        .showing {
            opacity: 1;
            z-index: 2;
        }

        .controls {
            position: absolute;
            top: 16%;
            border: 0px;
            background-color: transparent;
            font-size: 20px;
            z-index: 3;
            color: white;
            transition: .2s;
        }

            .controls:hover {
                transform: scale(1.2);
                color: rgba(179, 179, 179, 0.60);
            }

            .controls:focus {
                outline: none;
            }

        #previous {
            left: 0px;
        }

        #next {
            right: 0px;
        }

        .slide_btn_wrapper {
            position:absolute;
            top:1000px;
            right:46%;
            z-index:999;
        }

            .slide_btn_wrapper button {
                background-color: transparent;
                color:white;
                border:0px;
                width:30px;
                transition:.1s;
            }

            .slide_btn_wrapper button:hover {
                background-color: transparent;
                color:white;
                border:0px;
                width:30px;
                transform:scale(1.2);
            }
    </style>
    <script>
        $(document).ready(function () {
            var next = document.getElementById('next');
            var previous = document.getElementById('previous');
            var slides = document.querySelectorAll('#slides .slide');
            var currentSlide = 0;
            var slideInterval = setInterval(nextSlide, 13000);

            next.onclick = function () {
                //pauseSlideshow();
                nextSlide();
            }
            previous.onclick = function () {
                //pauseSlideshow();
                previousSlide();
            }

            function nextSlide() {
                goToSlide(currentSlide + 1);
            }

            function previousSlide() {
                goToSlide(currentSlide - 1);
            }

            function buttonSlide(currentId) {
                goToSlide(currentId + 1);
                document.getElementById(currentId).innerHTML = "&#9678";
            }

            function goToSlide(n) {
                slides[currentSlide].className = 'slide';
                document.getElementById(currentSlide).innerHTML = "&#9678";
                currentSlide = (n + slides.length) % slides.length;
                slides[currentSlide].className = 'slide showing';
                document.getElementById(currentSlide).innerHTML = "&#9673";
            }

            /*$(window).scroll(function () {
                if (scroll > 400 && scroll < 1300) {
                    $(".shopImg").fadeIn();
                } else {
                    $('.shopImg').fadeOut();
                }

                if (scroll > 1900) {
                    $(".forumImg").fadeIn();
                } else {
                    $('.forumImg').fadeOut();
                }
            });*/
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <center style="width: 100%">
            <button class="controls" id="previous">&#9665</button>
            <button class="controls" id="next">&#9655</button>
        <div class="top_container">
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
                    <li class="slide"><img src="Images/yeti_home.jpg" style="width:100%;position:relative;z-index:-10;" />
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
                    <li class="slide"><img src="Images/cannondale_home.jpg" style="width:100%;position:relative;z-index:-10;" />
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
                    <li class="slide"><img src="Images/trek_fuel_home.jpeg" style="width:100%;position:relative;z-index:-10;" />
                        <div class="thumbnail">
                            <div class="header">
                                <span>SALE</span>
                            </div>
                            <br />
                            <br />
                            <h1>
                                2017 TREK FUEL EX 9.9 29
                            </h1>
                            <br />
                            <span class="info">Stiffer, tighter, lower are the thoughts on the new Trek Fuel in comparison to the Remedy 29 of last year the bike which it errr…kind of replaces.</span>
                            <a href="Product.aspx?ProductID=15">LEARN MORE</a>
	                    </div>
                    </li>
                </ul>
        <div class="slide_btn_wrapper">
            <button id="0" onclick="goToSlide(this.id + 1);">&#9673</button>
            <button id="1" onclick="goToSlide(this.id + 1);" >&#9678</button>
            <button id="2" onclick="goToSlide(this.id + 1);" >&#9678</button>
            <button id="3" onclick="goToSlide(this.id + 1);" >&#9678</button>
            <button id="4" onclick="goToSlide(this.id + 1);" >&#9678</button>
        </div>
    </div>
 <div style="z-index:999;background-color:white;width:100%; margin-top:0px;">
        <div class="wrapperN1">
            <span class="contentHead">SHOP</span><hr />
            <div class="shopWrapper">
                <div class="textArea">
                    <h2 style="font:bold">The Best of the Best.</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In facilisis orci eget tellus ullamcorper malesuada. Donec quis augue viverra, pharetra enim ac, porttitor eros. Mauris in lectus finibus augue consequat viverra ac eu nibh. Aliquam a odio eget leo dictum porttitor sed nec est. Maecenas convallis nisi sit amet justo volutpat, sed convallis magna interdum. Suspendisse feugiat, ligula eu sagittis facilisis, ipsum elit ornare lectus, lacinia rutrum orci velit cursus orci.</p>
                    <a href="Shop.aspx" ><button class="btn shopBtn">SHOP</button></a>
                    <img class="shopImg" src="Images/bikes/home.jpg" />
                </div>
            </div>
        </div>
        <div>
            <div class="divider">
            </div>
        </div>
        <div class="wrapperN2">
            <span class="contentHead">FORUM</span><hr />
            <div class="shopWrapper">
                <div class="textArea">
                    <h2 style="font:bold">Ask Questions, Get Answers.</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In facilisis orci eget tellus ullamcorper malesuada. Donec quis augue viverra, pharetra enim ac, porttitor eros. Mauris in lectus finibus augue consequat viverra ac eu nibh. Aliquam a odio eget leo dictum porttitor sed nec est. Maecenas convallis nisi sit amet justo volutpat, sed convallis magna interdum. Suspendisse feugiat.</p>
                    <a href="Forum.aspx"><button class="btn shopBtn">FORUM</button></a>
                    <img class="forumImg" src="Images/helmet.png" />
                </div>
            </div>
        </div>
     </div>
    </center>
</asp:Content>