<%-- 
    Document   : helloworld
    Created on : 6 ก.พ. 2561, 19:06:25
    Author     : ssurakiti
--%>

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
  
  <title>Parallax Template - Materialize</title>

  <!-- CSS  -->
  
</head>
<body onload="initialize()">
  <nav  class="BGNav" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="#" class="colornav brand-logo" >Know We Do</a>
      
      <div class="RightNav">
      <ul class="right hide-on-med-and-down">
        <li><a href="#">CAMPAIGN</a></li>
      </ul>
      <ul class="right hide-on-med-and-down">
        <li><a href="#">COMPANY</a></li>
      </ul>
      <ul class="right hide-on-med-and-down">
        <li><a href="#">HOME</a></li>
      </ul>
      </div>
      
      <ul id="nav-mobile" class="side-nav">
        <li><a href="#">CAMPAIGN</a></li>
        
      </ul>
      <ul id="nav-mobile" class="side-nav">
        <li><a href="#">COMPANY</a></li>        
      </ul>
      <ul id="nav-mobile" class="side-nav">
        <li><a href="#">HOME</a></li>
        
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
      <script
            type="text/javascript"
            src="http://mmmap15.longdo.com/mmmap/mmmap.php?key=18b1fbbda1f980b4e368c631a3d317ea">
        </script>
        <script type="text/javascript">

            var mmmap;

            function initialize(){
                var mmMapDiv = document.getElementById("mmMapDiv");
                mmmap = new MMMap(mmMapDiv, 13.7648787,100.5380879, 3, "normal");
                mmmap.setSize(800,895);
                mmmap.rePaint();
                mmmap.showObject('__', "IG",true,null,null,"4d4d4d", "4d4d4d",0.7,0.5); 
            }

        </script>
         
        <div id="mmMapDiv"></div>
 

  </body>
</html>
