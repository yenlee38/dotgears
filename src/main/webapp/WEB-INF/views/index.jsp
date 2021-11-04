<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=320, initial-scale=1.0, maximum-scale=1.0"/>
    <title>.GEARS | Game Studio</title>
    <meta name="keywords" content="dotGears,.Gears,games,videos,casual,game,free,Flash,App,Android,iOS,,iphone,ipad,tablet,Smartphone,html5,javascript,canvas,arcade,mobile,games,action,smashing,cat,hero,underwater,story,card,shuffle,ninjas,assault,shuriken,block,gamedev,vietnam,japanese,game portal,browser games,html5 portal,pixel art,flappy,bird,super,ball,juggling,swing,copters,swing copters,flappy bird">
    <meta name="description" lang="en" content="GEARS (dotGEARS) is a small, independent game studio based in Hanoi, Vietnam. We make bite-sized arcade mobile games. Our work is heavily influenced by retro pixelated games in its golden age. Everything is pure, extremely hard and incredibly fun to play.">
    <style type="text/css">

        a, img {
            border:none;
        }

        img {
            border-radius: 10px;
            max-width: 300px;
        }

        body,td,th {
            font-family: Verdana, sans-serif;
            font-size: 11px;
            line-height: 13px;
            color: #4b4b4b;
            text-align: left;
        }

        body {
            background-color: #ffffff;
            margin-top: 0;
            margin-bottom: 0;
            margin-left: 0;
            margin-right: 0;
        }

        a:active {  color: #17a554; text-decoration: none}
        a:link {  color: #17a554; text-decoration: none}
        a:visited {  color: #4b4b4b; text-decoration: none}
        a:hover {  color: #17a554}

        p {
            text-align: justify;
        }

        td
        {
            margin-top: 0;
        }

        iframe {
            width: 100%;
            height: 50px;
            border: 0;
        }
    </style>

</head>
<body >

<table width="300" border="0" align="center" cellpadding="0" cellspacing="0">

    <tr>
        <td>
            <div align="center">
                <a href="./index.html"> <img src="https://dotgears.com/logo.png" alt=".GEARS Home"  hspace="0" vspace="50"/></a>
            </div>
        </td>
    </tr>

    <tr>
        <td>
            <div align="center">
                <br />
                <img src="https://dotgears.com/walk.gif" hspace="0" vspace="0" align="center" alt="bull" />
                <img src="https://dotgears.com/walk.gif" hspace="0" vspace="0" align="center" alt="bull" />
                <img src="https://dotgears.com/walk.gif" hspace="0" vspace="0" align="center" alt="bull" />
            </div>
        </td>
    </tr>


    <tr>
        <td>
            <div align="center">
                <br />
                <img src="https://dotgears.com/games.png" hspace="0" vspace="0" align="center" alt="Games" />
            </div>
        </td>
    </tr>

   <c:forEach items="${listPost}" var="post">
       <tr>
           <td>
               <div>
                   <br />
                   <a href="/qanyn/post-deatail/${post.id}" style="text-transform: uppercase; color: #17a554; font-size: 12px; font-weight: bold">
                       <img src="${post.getPathThumbnail()}" alt="${post.title}" onerror="this.onerror=null; this.src='https://www.wpbeginner.com/wp-content/uploads/2013/04/wp404error.jpg'" width="60" height="60" hspace="8" vspace="0" align="left" />${post.title}</a><br />
                   <hr size="2" color="#000000" />
                   ${post.content}<br clear="all" />

               </div>
           </td>
       </tr>

   </c:forEach>

    <tr>
        <td>
            <div align="center">
                <br>
                <img src="https://dotgears.com/about.png" hspace="0" vspace="8" align="center" alt="about">
                <p>
                    .GEARS (dotGEARS) is an Internet-based company. We produce and publish bite-sized arcade mobile games.<br>
                    <br>Our games are kid-friendly, extremely difficult and incredibly fun.<br><br>Our support email
                    <a href="mailto:contact@dotgears.com">contact@dotgears.com</a><br><br>Thank you for your visit!<img src="https://dotgears.com/bird.gif" hspace="4" vspace="0" horizontal-align="center" vertical-align="top">
                </p>
                <img src="https://dotgears.com/knight.gif" hspace="8" vspace="8" align="center">
                <br>
                <br>
            </div></td>
    </tr>

    <tr>
        <td>
            <div align="center">
                <br>
                <a href="./privacy.html"> <img src="https://dotgears.com/privacy.png" alt="Privacy Policy" hspace="0"></a>
                <br>
                <br>
            </div></td>
    </tr>

<%--    <tr >--%>
<%--        <td><p style="background-color: #000000; text-align:center; color: white; margin-top:20px">© 2021 .GEARS</p></td>--%>
<%--    </tr>--%>



</table>
<%@include file="common/footer.jsp"%>
</body>
</html>