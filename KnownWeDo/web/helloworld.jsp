<%-- 
    Document   : helloworld
    Created on : 6 ก.พ. 2561, 19:06:25
    Author     : ssurakiti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/materialize.css">
<link rel="stylesheet" href="css/materialize.min.css">
<link rel="stylesheet" href="css/center.css">
<link rel="stylesheet" href="js/materialize.js">
<link rel="stylesheet" href="js/materialize.min.js">
<link rel="stylesheet" href="js/video.js">
<!DOCTYPE html>
<html>

<head>
    <title>INT206Software</title>
</head>

<body>
    <video  id="bgvid" playsinline autoplay muted loop>

        <source src="http://thenewcode.com/assets/videos/polina.mp4" type="video/mp4">
    </video>
<div style="padding-left:35%;margin-top:10%">
<div class="row ">
    <div class="col s12 m6">
        <div class="card">
            <div class="card-image">
                <img src="./images/hello_world.gif"
            </div>
            <div class="card-content">
                <p style="text-align:center"><span style="color:palevioletred">${message}</span><br>"Good times become good memories and bad times become good lessons."</p>
            </div>
        </div>
    </div>
</div>
</div>



</body>

</html>