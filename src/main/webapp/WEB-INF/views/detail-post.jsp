<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=320, initial-scale=1.0, maximum-scale=1.0"/>
    <title>.GEARS | ${post.title}</title>


</head>
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

<body >
<table width="300" border="0" align="center" cellpadding="0" cellspacing="0">


    <tr>
        <td>
            <div align="center">
                <a href="../index.html"> <img src="https://dotgears.com/logo.png" alt=".GEARS Home"  hspace="0" vspace="50" /></a>
            </div>
        </td>
    </tr>

    <tr>
        <td>
            <div>
                <br />
                <a href="/qanyn/post-deatail/${post.id}" style="text-transform: uppercase;  color: #17a554; font-size: 12px; font-weight: bold"> <img src="${post.getPathThumbnail()}" onerror="this.onerror=null; this.src='https://www.wpbeginner.com/wp-content/uploads/2013/04/wp404error.jpg'" alt="${post.title}" width="60" height="60" hspace="8" vspace="0"  align="left" />${post.title}</a><br />
                <hr size="2" color="#000000" />
                ${post.content}<br clear="all" />
                <br />
                <br />
                Genre: ${post.genre}<br clear="all" />
                Rate: ${post.rate}<br clear="all" />
                Release Date: ${post.release_date}<br clear="all" />
                Developer: ${post.developer}<br clear="all" />
            </div>
            <br />
            <br />
            <div align="center">
                <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://www.dotgears.com/apps/app_swing.html">Tweet</a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
            </div>
        </td>
    </tr>



    <c:if test = "${screenShotsList.size() > 0}">
        <tr>
            <td>
                <div align="center">
                    <img src="https://dotgears.com/screenshots.png" hspace="0" vspace="8" align="center" />
                </div>
            </td>
        </tr>

    </c:if>
    <c:forEach items="${screenShotsList}" var = "sr">
        <tr>
            <td>
                <div align="center">
                    <img src="${sr.getPathThumbnail()}" hspace="0" vspace="16" align="center" />
                </div>
            </td>
        </tr>
    </c:forEach>


   <c:if test = "${pilotList.size() > 0}">
       <tr>
           <td>
               <div align="left">
                   <br />
                   <div align="center">
                       <img src="https://dotgears.com/scopters2/swingcopters2/plot.gif" hspace="0" vspace="8" align="center" alt="plot"/>
                   </div>
                   <c:forEach items="${pilotList}" var = "pilot" varStatus="loop">
                   <div>
                       <p>${pilot.content}</p>
                       <div align="center">
                           <img src="${pilot.getPathThumbnail()}" hspace="4" vspace="0" horizontal-align="center" vertical-align="top" />
                       </div>
                       <c:if test = "${pilotList.size() > 1 && loop.index != (pilotList.size() - 1)}">
                           <hr size="1" color="#000000">
                       </c:if>
                     </div>
                   </c:forEach>

               </div>
           </td>
       </tr>

   </c:if>
    <c:if test="${pilotsList.size() > 0}">
        <tr>
            <td>
                <div>
                    <br />
                    <div align="center">
                        <img src="https://dotgears.com/scopters2/swingcopters2/pilots.png" hspace="0" vspace="8" align="center" alt="pilots"/>
                    </div>
                    <c:forEach items="${pilotsList}" var = "pilots" varStatus="loop">
                        <div>
                            <p><font style="color: #1c9c25;font-size: 24px;font-style: bold">${pilots.full_name}</font></p>
                            <img src="${pilots.getPathThumbnail()}" hspace="0" vspace="8" align="center" alt="spinki"/>
                            <p>${pilots.content}</p>
                            <p><font style="color: #1c9c25">Full Name:</font> ${pilots.full_name}</p>
                            <p><font style="color: #1c9c25">Title:</font> ${pilots.title}</p>
                            <p><font style="color: #1c9c25">Zodiac Sign:</font>${pilots.zodiac_sign}</p>
                            <p><font style="color: #1c9c25">Hobbies:</font> ${pilots.hobbies}</p>
                            <p><font style="color: #1c9c25">Bloodtype:</font> ${pilots.blood_type}</p>
                        </div>
                        <br />
                        <c:if test = "${pilotsList.size() > 1 && loop.index != (pilotsList.size() - 1)}">
                            <hr size="1" color="#000000">
                        </c:if>
                    </c:forEach>

                </div>
            </td>
        </tr>
    </c:if>

   <c:if test = "${guidesList.size() > 0}">
       <tr>
           <td>
               <div>
                   <br />
                   <div align="center">
                       <img src="https://dotgears.com/scopters2/swingcopters2/guide.png" hspace="0" vspace="8" align="center" alt="guides"/>
                   </div>
                  <c:forEach items="${guidesList}" var = "guides">
                   <div align="center">
                       <img src="${guides.getPathThumbnail()}" hspace="0" vspace="8" align="center" alt="fabi"/>
                   </div>
                   </c:forEach>
           </td>
       </tr>
   </c:if>

    <tr>
        <td>
            <div align="center">
                <br />
                <a name="download">
                    <img src="https://dotgears.com/download.gif" hspace="0" vspace="8" align="center" alt="download"/>
                    <br />
                    <a href="https://itunes.apple.com/app/id636374339"> <img src="<c:url value= '/imgs/ios.png'/>" alt="App Store" hspace="4" vspace="0" width="100" height="40"></a>
                    <a href="https://itunes.apple.com/app/id636374339"> <img src="<c:url value= '/imgs/android.jpg'/>" alt="CH Store" hspace="4" vspace="0" width="100" height="40"></a>
                    <div id="countdown"></div>
                    <div class="note"></div>
            </div>
        </td>
    </tr>

    <tr>
        <td>
            <div align="center" style="margin-top:20px;margin-bottom:20px;">
                Thank you for playing!
                <img src="https://dotgears.com/bird.gif" hspace="4" vspace="0" horizontal-align="center" vertical-align="top" />
        </div>
            </div>
        </td>
    </tr>

    <tr>
        <td>
            <div align="center">
                <a href="/qanyn/home"> <img src="https://dotgears.com/home.png" alt=".GEARS Home" hspace="0" vspace="0" border="4"></a>
            </div>
        </td>
    </tr>




</table>

<%@include file="common/footer.jsp"%>
</body>
</html>