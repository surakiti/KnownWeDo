<%-- 
    Document   : helloworld
    Created on : 6 ก.พ. 2561, 19:06:25
    Author     : ssurakiti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link rel="stylesheet" href="style.css" type="text/css">
<!DOCTYPE html>
<html>

<head>
    <title>INT206 Software Project Management</title>
</head>

<body>

   <div class="fullscreen-bg">
    <video loop muted autoplay poster="asset/img/polina.jpg" class="fullscreen-bg__video">
        <source src="asset/video/polina.mp4" type="video/mp4">
    </video>
    </div>     
    <div style="padding-left:35%;margin-top:10%">
    <div class="row ">
    <div class="col s12 m6">
        <div class="card">
            <div class="card-image">
                <img border="0" src="http://www.mx7.com/i/287/nVKoku.gif" />
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
