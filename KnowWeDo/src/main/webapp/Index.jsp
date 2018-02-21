<%-- 
    Document   : helloworld
    Created on : 6 ก.พ. 2561, 19:06:25
    Author     : ssurakiti
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Campaign"%>
<%@page import="java.util.LinkedHashSet"%>
<%@page import="Model.Address"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">-->


<!DOCTYPE html>

<html lang="en">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
    <link rel="stylesheet" href="CSS/style.css" type="text/css">
    <link rel="stylesheet" href="CSS/materialize.min.css" type="text/css">
    <link rel="stylesheet" href="CSS/materialize.css" type="text/css">
    <link rel="stylesheet" href="CSS/stylefont.css" type="text/css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Know We Do</title>


        <title>Parallax Template - Materialize</title>

        <!-- CSS  -->

    </head>
    <body onload="initialize()" >
        <nav  class="BGNav" role="navigation">
            <div class="nav-wrapper container">
                <a id="logo-container" href="#" class="colornav brand-logo" >Know We Do</a>

                <div class="RightNav">
                    <ul class="right hide-on-med-and-down">
                        <li><a href="/">CAMPAIGN</a></li>
                    </ul>
                    <ul class="right hide-on-med-and-down">
                        <li><a href="company.jsp">COMPANY</a></li>
                    </ul>
                    <ul class="right hide-on-med-and-down">
                        <li><a href="/">HOME</a></li>
                    </ul>
                </div>

                <ul id="nav-mobile" class="side-nav">
                    <li><a href="/">CAMPAIGN</a></li>

                </ul>
                <ul id="nav-mobile" class="side-nav">
                    <li><a href="company.jsp">COMPANY</a></li>        
                </ul>
                <ul id="nav-mobile" class="side-nav">
                    <li><a href="/">HOME</a></li>

                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>

        <div id="index-banner" class="parallax-container">
            <div class="section no-pad-bot">
                <div class="container">
                    <br><br>
                    <h1 class="header center teal-text text-lighten-2">Volunteer</h1>
                    <div class="row center">
                        <h5 class="header col s12 light"></h5>
                    </div>
                    <div class="row center">
                        <a href="company.jsp" id="download-button" class="btn-large waves-effect waves-light teal lighten-1">Get Started</a>
                    </div>
                    <br><br>

                </div>
            </div>
            <div class="parallax"><img src="bg1.1.jpg" alt="Unsplashed background img 1"></div>
        </div>








        <script
            type="text/javascript"
            src="http://mmmap15.longdo.com/mmmap/mmmap.php?key=18b1fbbda1f980b4e368c631a3d317ea">
        </script>
        <script type="text/javascript">

            var mmmap;

            <%
                LinkedHashSet<Address> linkFilterAddress = (LinkedHashSet<Address>) request.getAttribute("linkFilterAddress");
                ArrayList<Campaign> arrayCampaign = (ArrayList<Campaign>) request.getAttribute("arrayCampaign");
                boolean[] linkAddress = Address.showCampaignByProvince(linkFilterAddress);
            %>

            function initialize() {
                var mmMapDiv = document.getElementById("mmMapDiv");
                mmmap = new MMMap(mmMapDiv, 13.7648787, 100.5380879, 3, "normal");
                mmmap.setSize(700, 700);
                mmmap.rePaint();
                mmmap.hideZoomBar();
                mmmap.hideVerticalZoomBar();
                mmmap.hideMovingPad();
                mmmap.hideScale();
                mmmap.hideModeSelector();
                mmMapDiv.addEventListener("click", onclick);
            <%
                for (int i = 10; i < linkAddress.length; i++) {
                    if (linkAddress[i]) {
            %>
                mmmap.showObject('<%=i%>', "IG", false, null, null, "FF8000", "FF8000", 0.7, 0.5);
            <%      } else {
            %>
                mmmap.showObject('<%=i%>', "IG", false, null, null, "4d4d4d", "4d4d4d", 0.7, 0.5);
            <%      }
                }
            %>
            }
            function onclick() {
                var lar = mmmap.centerLat();
                var long = mmmap.centerLong();
                mmmap.getAddressObjectFromLatLon(lar, long, "th", "address", "checkAddress(address)");
            }

            function checkAddress(address) {
                console.log(address);
            <%
                for (int i = 0; i < linkFilterAddress.size(); i++) {
            %>
                console.log(Math.trunc(address.geocode / 10000));
                console.log(<%=((Address) linkFilterAddress.toArray()[i]).getGeocode() / 100%>);
                if (Math.trunc(address.geocode / 10000) == <%=((Address) linkFilterAddress.toArray()[i]).getGeocode() / 100%>) {
                    mmmap = new MMMap(mmMapDiv, 13.7648787, 100.5380879, 3, "normal");
                    mmmap.setSize(700, 700);
                    mmmap.rePaint();
                    mmmap.hideZoomBar();
                    mmmap.hideVerticalZoomBar();
                    mmmap.hideMovingPad();
                    mmmap.hideScale();
                    mmmap.hideModeSelector();
                    mmMapDiv.removeEventListener('click', onclick);
            <%
                        for (int j = 1001; j <= 1050; j++) {
                            if (((Address) linkFilterAddress.toArray()[i]).getGeocode() == j) {
            %>
                    mmmap.showObject('<%=j%>', "IG", false, null, null, "FF8000", "FF8000", 0.7, 0.5);
            <%
                    } else {
            %>
                    mmmap.showObject('<%=j%>', "IG", false, null, null, "4d4d4d", "4d4d4d", 0.7, 0.5);
            <%
                            }
                        }
            %>

                }
            <%
                }
            %>
            }
             function onclickAmphur() {
                var lar = mmmap.centerLat();
                var long = mmmap.centerLong();
                mmmap.getAddressObjectFromLatLon(lar, long, "th", "address", "checkAmphur(address)");
            }

            function checkAmphur(address){
                
            }

        </script>

        <div style="margin-left:-19.5%;margin-top:0%;">
            <div style="margin-left:16.4%;" id="mmMapDiv"></div>
        </div>
        <div class="totalCampaign">
            <h2>Total campaign</h2><br><br>
            <h2><%=arrayCampaign.size()%></h2>
        </div>






        <div class="parallax-container valign-wrapper">
            <div class="section no-pad-bot">
                <div class="container">
                    <div class="row center">
                    </div>
                </div>
            </div>
            
            <div class="parallax"><img src="bg2.jpg" alt="Unsplashed background img 2"></div>
        </div>

        <div class="container">
            <div class="section">

                <div class="row">
                    <div class="col s12 center">
                        <h3><i class="mdi-content-send brown-text"></i></h3>
                        <h4>WHAT WE DO</h4>
                        <p class="left-align light">We are a website which is central to the corporate 
                            social responsibility of the leading companies and 
                            organizations in Thailand. By the way, we have the 
                            goal to promote and help companies or organizations
                            have seen the areas not been saved. That makes 
                            people get help to thoroughly. We see the suffering of
                            people in the country. So we established a website to
                            help people in country. To have a good quality of 
                            life and sustainability.</p>
                    </div>
                </div>

            </div>
        </div>
        <div class="row">
            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center brown-text"><img style=" width:150px;height: 150px;" src="ph1.jpg" ></h2>
                    <h5 class="center">Volunteer</h5>

                    <p class="light">We did most of the heavy lifting for you to provide a default stylings that incorporate our custom components. Additionally, we refined animations and transitions to provide a smoother experience for developers.</p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center brown-text"><img style=" width:150px;height: 150px;" src="ph2.jpg" ></h2>
                    <h5 class="center">Donation</h5>

                    <p class="light">By utilizing elements and principles of Material Design, we were able to create a framework that incorporates components and animations that provide more feedback to users. Additionally, a single underlying responsive system across all platforms allow for a more unified user experience.</p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center brown-text"><img style=" width:150px;height: 150px;" src="ph3.jpg" ></h2>
                    <h5 class="center">Charity</h5>

                    <p class="light">We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.</p>
                </div>
            </div>
        </div>

        
        <div class="parallax-container valign-wrapper">
            <div class="section no-pad-bot">
                <div class="container">
                    <div class="row center">

                    </div>
                </div>
            </div>
            <div class="parallax"><img src="bg3.jpg" alt="Unsplashed background img 3"></div>
        </div>

        <footer class="page-footer teal">
            <div class="container">
                <div class="row">
                    <div class="col l6 s12">
                        <h5 class="white-text">Know We DO </h5>
                        <p class="grey-text text-lighten-4">We are a team of college students working on this project like it's our full time job. Any amount would help support and continue development on this project and is greatly appreciated.</p>


                    </div>
                    <div class="col l3 s12">


                    </div>

                    <div class="col l3 s12" >
                        <h5 class="white-text">Connect</h5>
                        <ul>
                            <li><a class="white-text" href="#!"><img style=" width:26px;height:26px;margin-bottom:-1.8%" src="/logofootter/fb.png"> Facebook</a></li>
                            <li><a class="white-text" href="#!"><img style=" width:20px;height:20px;margin-bottom:-1.8%" src="/logofootter/tt.png"> Twitter</a></li>
                            <li><a class="white-text" href="#!"><img style=" width:20px;height:20px;margin-bottom:-1.8%" src="/logofootter/ig.png"> Instagram</a></li>
                            <li><a class="white-text" href="#!"><img style=" width:20px;height:20px;margin-bottom:-1.8%" src="/logofootter/tg.png"> Telegram</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    <span style="text-align:cen">Know We Do Company Copyright @2018</span>
                </div>
            </div>
        </footer>



        <!--  Scripts-->
        <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="JS/materialize.js"></script>
        <script src="JS/init.js"></script>
    </body>
</html>
