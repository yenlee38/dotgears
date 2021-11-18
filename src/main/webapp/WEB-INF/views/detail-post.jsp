<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="shortcut icon" href="https://res.cloudinary.com/yenltn/image/upload/v1636517772/treegames_yt3kx9.png" type="image/large-icon" sizes="48x48" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=320, initial-scale=1.0, maximum-scale=1.0"/>
    <title>.TREEGAMES | ${post.title}</title>
    <script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <!-- Bootstrap -->
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style type="text/css">

    #scrollBtn {
        display: none;
        position: fixed;
        bottom: 20px;
        right: 30px;
        z-index: 99;
        border: none;
        outline: none;
        background-color: #01C5C4;
        color: white;
        cursor: pointer;
        padding: 10px;
        border-radius: 50%;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
        transition: 1s all;
    }

    #scrollBtn:hover {
        background-color: #75CFB8; /* Add a dark-grey background on hover */
    }

    hr {
        margin: 0 -15px;
        border: 0;
        border-top: 2px solid #000000;
        background-color: #000000 !important;
        opacity: 1 !important;
    }

    .fb-share-button{
        height: 40px;
        background-color: #1d9bf0;
        /*padding: 12px 12px 12px 12px*/
    ;

        padding-left: 5px;

        color: #fff;
        border-radius: 9999px
    ;
        font-weight: 500;
        cursor: pointer;
        display: inline-block;
        vertical-align: top;
        zoom: 1;
        color: white;
        justify-content: center;
        align-items: center;
        text-align: center;
    }
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

    .fa {
        padding: 10px;
        font-size: 14px;
        width: 35px !important;
        text-align: center;
        text-decoration: none;
        color: white;
        border-radius: 3px;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
    }

    .fa:hover {
        opacity: 0.7;
        color: white;
    }

    .fa-facebook {
        background: #3B5998;
        color: white;
    }

    .fa-twitter {
        background: #55ACEE;
        color: white;
    }

    body {
        background-color: #ffffff;
        margin-top: 0;
        margin-bottom: 0;
        margin-left: 0;
        margin-right: 0;
    }

    a:link {   text-decoration: none}

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

    .twitter-share-button {
        padding: 20px;
        font-size: 30px;
        width: 50px;
        text-align: center;
        text-decoration: none;
        margin: 5px 2px;
        border-radius: 0;
    }

    .toasts-url {
        background-color: #ffffff !important;
        color: #1d1b31 !important;
        width: 250px !important;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
    }

    .btn-close {
        color: white !important;
    }

</style>

<body onload="init()">
<table width="300" border="0" align="center" cellpadding="0" cellspacing="0">


    <tr>
        <td>
            <div align="center">
                <a href="./treegames/home"> <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="80" width="140" alt=".GEARS Home"  hspace="0" vspace="15"/></a>
            </div>
        </td>
    </tr>

    <tr>
        <td>
            <div>
                <br />
                <a href="/treegames/game/${post.id}" style="text-transform: uppercase;  color: #17a554; font-size: 12px; font-weight: bold"> <img src="${post.getPathThumbnail()}" onerror="this.onerror=null; this.src='https://cdn.meiker.io/assets/163499/2021/10/icon_2021102519570661770c127322c.png'" alt="${post.title}" width="60" height="60" hspace="8" vspace="0"  align="left" />${post.title}</a><br />
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
            <div style="justify-content: center; align-items: center; flex-direction: row; display: flex;" >
            <div align="center" style="height: 70px;" >
                <c:if test="${fbUrl != ''}">
                    <a href="${fbUrl}" class="fa fa-facebook facebook-btn" target="_blank"></a>
                </c:if>
                <c:if test="${fbUrl == ''}">
                    <a   style="cursor: pointer;" id="liveToastFbBtn" class="fa fa-facebook facebook-btn" target="_blank"></a>
                </c:if>
                <c:if test="${twUrl != ''}">
                    <a href="${twUrl}" class="fa fa-twitter twitter-btn" target="_blank"></a>
                </c:if>
                <c:if test="${twUrl == ''}">
                    <a  style="cursor: pointer;" id="liveToastTwBtn" class="fa fa-twitter twitter-btn"  target="_blank"></a>
                </c:if>

            </div>
            </div>
            <div class="position-fixed bottom-0 p-3" style="z-index: 11">
                    <div id = "liveToast" class="toast hide align-items-center text-white border-0 toasts-url" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="d-flex">
                            <div class="toast-body">
                               <span style="color:#000 !important; ">This url is being developed!</span>
                            </div>
                            <div style="justify-content: center; align-items: center; display: flex;"><button type="button" class="btn" style=" padding: 5px; border: none; color: white !important; background-color: #FDCB9E !important; border-radius: 50% !important;" data-bs-dismiss="toast"><span style="font-size: 0.75rem;" class="iconify" data-icon="clarity:remove-line"></span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </td>
    </tr>
    <c:if test = "${screenShotsList.size() > 0}">
        <tr>
            <td>
                <div align="center">
                    <img src="https://res.cloudinary.com/yenltn/image/upload/v1636535627/treegames/coollogo_com-220504165_n9uzuq.png" width="250" hspace="0" vspace="8" align="center" />
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

    <c:if test="${pilotsList.size() > 0}">
        <tr>
            <td>
                <div>
                    <br />
                    <div align="center">
                        <img width="190" src="https://res.cloudinary.com/yenltn/image/upload/v1636535606/treegames/chae_re6fmp.png" hspace="0" vspace="8" align="center" alt="pilots"/>
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
                       <img src="https://res.cloudinary.com/yenltn/image/upload/v1636535591/treegames/guide_sbsp86.png" width="150" hspace="0" vspace="8" align="center" alt="guides"/>
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
                    <c:if test="${iosUrl != ''}">
                    <a href="${iosUrl}"> <img src="<c:url value= '/imgs/ios.png'/>" alt="App Store" hspace="4" vspace="0" ></a>
                    </c:if>
                    <c:if test="${iosUrl == ''}">
                    <a id = "liveToastIosBtn" style="cursor: pointer"  target="_blank" > <img src="<c:url value= '/imgs/ios.png'/>" alt="App Store" hspace="4" vspace="0" ></a>
                    </c:if>
                    <c:if test="${androidUrl != ''}">
                    <a href="${androidUrl}" target="_blank"> <img src="<c:url value= '/imgs/googleplay.png'/>"  alt="CH Store" hspace="4" vspace="0"></a>
                    </c:if>
                    <c:if test="${androidUrl == ''}">
                    <a  id = "liveToastAnBtn"  style="cursor: pointer"> <img src="<c:url value= '/imgs/googleplay.png'/>" alt="CH Store" hspace="4" vspace="0"></a>
                    </c:if>

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
                <a href="/treegames/home"> <img src="https://dotgears.com/home.png" alt=".GEARS Home" hspace="0" vspace="0" border="4"></a>
            </div>
        </td>
    </tr>




</table>

<button onclick="topFunction()" id="scrollBtn" title="Go to top"><span style="font-size: 25px" class="iconify" data-icon="cil:arrow-circle-top"></span></button>

<%@include file="common/footer.jsp"%>
<script>
    mybutton = document.getElementById("scrollBtn");

    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            mybutton.style.display = "block";
        } else {
            mybutton.style.display = "none";
        }
    }

    function topFunction() {
        document.body.scrollTop = 0; // For Safari
        document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
    }

    $(document).ready(function(){
        $("#liveToastFbBtn").click(function(){
            $("#liveToast").toast("show");
        });
    });

    $(document).ready(function(){
        $("#liveToastIosBtn").click(function(){
            $("#liveToast").toast("show");
        });
    });

    $(document).ready(function(){
        $("#liveToastAnBtn").click(function(){
            $("#liveToast").toast("show");
        });
    });

    $(document).ready(function(){
        $("#liveToastTwBtn").click(function(){
            $("#liveToast").toast("show");
        });
    });
</script>
</body>
</html>