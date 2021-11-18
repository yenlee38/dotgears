<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="shortcut icon" href="https://res.cloudinary.com/yenltn/image/upload/v1636517772/treegames_yt3kx9.png" type="image/large-icon" sizes="48x48" />
    <title>${post.title}</title>
    <script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
    <link href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</head>
<style>

    .fa {
        padding: 10px;
        font-size: 14px;
        width: 35px !important;
        text-align: center;
        text-decoration: none;
        color: white;
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

    .btn-edit-post {
        padding: 5px;
        font-weight: 500;
        color: white;
        background-color: #1597E5;
        border-radius: 3px;
        outline: none;
        border: none;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
    }


    a, img {
        border:none;
    }

    img {
        max-width: 300px;
        border-radius: 10px;
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

    a:active {   text-decoration: none}
    a:link { text-decoration: none}
    a:visited {text-decoration: none}

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

    .div-input-form {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-top: 5px;
        margin-bottom: 5px;
    }

    .handle-input {
        width: 70%;
        display: flex;
        justify-content: flex-start;
        flex-direction: column;
        align-items: center;

    }

    .lb-title {
        font-weight: 500;
        color: #142850;

    }

    .txt-content {
        padding: 5px;
        border-radius: 5px;
        border: 2px solid #0C7B93;
        width: 100%;
        outline: #17a554;
    }

    .hr-post {
        border: 2px solid #000000 !important;
        color: #000000;
        border-width: 2px;
        background-color: #000000 !important;
        margin: 0 !important;
        padding: 0!important;
        opacity: .25;
    }

    hr.hr-post {
        border: 1px solid #000000 !important;
        color: #002366;
        background-color: #000000 !important;
        margin: 0 !important;
        padding: 0!important;
        opacity: 1;
    }

    .hr {
        border: 1px solid #000000 !important;
        margin-top: 10px;
        margin-bottom: 10px;
        opacity: 1;
    }

    hr {
        margin: 0 -15px;
        border: 0;
        border-top: 2px solid #000000;
        background-color: #000000 !important;
        opacity: 1 !important;
    }

    .title-type {
        justify-content: center;
        align-items: center;
        display: flex;
    }


    .btn-add-images {
        outline: none;
        border-radius: 5px;
        color: #fff;
        font-weight: 400;
        padding-right: 9px;
        padding-left: 9px;
        padding-top: 10px;
        padding-bottom: 10px;
        background-color: #64C9CF;
        border: none;
        margin-left: 5px;
        margin-right: 5px;
        transition: all 1s;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
    }

    .btn-add-images:hover {
        background-color: #39A2DB;
        font-weight: 600;
    }

    .btn-save-content {
        width: 100%;
        justify-content: flex-end;
        display: flex;
        color: white;
        font-weight: bold;
        margin-top: 20px;
    }

    .btn-save {
        color: white;
        font-weight: bold;
        outline: none;
        border: none;
        padding: 5px;
        border-radius: 5px;
        background-color: #002366;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
    }

    .btn-delete-post {
        color: white;
        font-weight: 500;
        outline: none;
        border: none;
        padding: 5px;
        padding-left: 10px;
        padding-right: 10px;
        border-radius: 5px;
        background-color: #FF4848;
        transition: all 1s;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
    }

    .btn-delete-post:hover {
        font-weight: 600;
        background-color: #FF2442;
    }

    .get-file::-webkit-file-upload-button {
        visibility: hidden;
    }

    .get-file {
        margin-top: 5px;
        font-family: Arial, sans-serif;
        transition: all 1s;
        color: white;

    }

    .get-file::before {
        color: white;
        font-family: Arial, sans-serif;
        content: 'Select image';
        display: inline-block;
        background: linear-gradient(top, #f9f9f9, #e3e3e3);
        background:#EBB493;
        border-radius: 5px;
        padding: 5px 8px;
        outline: none;
        white-space: nowrap;
        -webkit-user-select: none;
        cursor: pointer;
        font-weight: 500;
        font-size: 10pt;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
    }

    .get-file:hover::before {

        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
        color: white;
    }
    .get-file:active::before {
        color: white;
        background: #EBB493;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
    }

    .modal-delete {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgb(0,0,0);
        background-color: rgba(0,0,0,0.4);
    }

    .header-alert {
        padding: 0;
        background-color: #00A8CC;
        color: white;
        font-weight: 500;
        font-size: 0.8rem;
        justify-content: flex-start;
        align-items: center;
    }

    .body-alert {
        padding: 16px 16px;
        font-weight: 500;
    }

    .footer-alert {
        padding: 2px 16px;
        color: white;
        display: flex;
        justify-content: flex-end;
        align-items: center;
        background-color:#F6F6F6;
    }

    .content-alert {
        background-color: #fefefe;
        margin: 15% auto;
        padding: 20px;
        border: 1px solid #888;
        border-radius: 8px;
        width: 50%;
        -webkit-animation-name: animatetop;
        -webkit-animation-duration: 0.4s;
        animation-name: animatetop;
        animation-duration: 0.4s;
        z-index: 10000 !important;
    }

    .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
    }

    @-webkit-keyframes animatetop {
        from {top:-300px; opacity:0}
        to {top:0; opacity:1}
    }

    @keyframes animatetop {
        from {top:-300px; opacity:0}
        to {top:0; opacity:1}
    }

    .btn-modal-delete {
        background-color: #FF5151;
        padding: 5px;
        border: none;
        outline: none;
        border-radius: 5px;
        font-weight: 400;
        color: white;
        margin-left: 5px;
        margin-right: 5px;
        transition: 1s all;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
        padding: 0.625rem 1.5rem 0.5rem;
    }

    .btn-modal-delete:hover{
        font-weight: 600;
        background-color: #950101;
    }

    .btn-modal-cancel {
        background-color: #39A2DB;
        padding: 5px;
        border: none;
        outline: none;
        border-radius: 5px;
        font-weight: 400;
        color: white;
        transition: 1s all;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
        padding: 0.625rem 1.5rem 0.5rem;
    }

    .btn-modal-cancel:hover {
        font-weight: 600;
        background-color: #00A8CC;
    }

    img {
        max-height: 70vh !important;
    }

    .body-detail {
        /*background-color: aliceblue;*/
        /*min-height: 50vh;*/
        /*margin: 20px;*/
        /*padding: 10px;*/
    }

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

    .social-btn {
        outline: none;
        border: none;
        border-radius: 3px;
    }

    .btn-url {
        color: white;
        border-radius: 3px;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
        height: 30px;
        padding: 8px 5px;
        margin-right: 5px;
        background-color: #1597E5
    }

    .txt-url {
        height: 30px;
        border-radius: 3px;
        width: 300px;
        border: 1px solid #1597E5 !important;
        outline: none !important;
    }

</style>
<body >
<%--<%@include file="common/nav-admin.jsp"%>--%>
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
                <a href="/treegames/game/${post.id}" style="text-transform: uppercase; color: #17a554; font-size: 12px; font-weight: bold"> <img src="${post.getPathThumbnail()}" onerror="this.onerror=null; this.src='https://cdn.meiker.io/assets/163499/2021/10/icon_2021102519570661770c127322c.png'" alt="${post.title}" width="60" height="60" hspace="8" vspace="0"  align="left" />${post.title}</a>
                <br />
                <hr class = "hr-post" />
                ${post.content}<br clear="all" />
                <br />
                Genre: ${post.genre}<br clear="all" />
                Rate: ${post.rate}<br clear="all" />
                Release Date: ${post.release_date}<br clear="all" />
                Developer: ${post.developer}<br clear="all" />
            </div>
            <div class = "mt-2 mb-10">
                <button class = "btn-edit-post" data-bs-toggle="modal" data-bs-target="#modalEditThumbnailPost"
                        type="submit"><span class="iconify" data-icon="el:file-edit-alt" style="margin-right: 5px"></span>Edit thumbnail</button>
                <button class = "btn-edit-post" data-bs-toggle="modal" data-bs-target="#modalEditContentPost"
                        type="submit"><span class="iconify" data-icon="el:file-edit" style="margin-right: 5px"></span>Edit content</button>
                <button class = "btn-delete-post" id="btnDeletePost" style="justify-content: center; align-items: center; text-align: center">
                    <span class="iconify" data-icon="dashicons:trash" style="margin-right: 5px"></span>Delete</button>

            </div>

            <div align="center" style="height: 70px; margin-top: 30px" >
                <button data-bs-toggle="modal" data-bs-target="#addFacebookLink" class="fa fa-facebook social-btn" ></button>
                <button data-bs-toggle="modal" data-bs-target="#addTwitterLink" class="fa fa-twitter social-btn" ></button>
            </div>

            <div id = "addAndroidLink" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <form  action="/treegames/admin/link/${post.id}/ANDROID" method="post" enctype="multipart/form-data" class = "modal-dialog content-alert">
                    <div class = "modal-content">
                        <div class = "modal-header header-alert">
                            <a href="./treegames/home"> <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="140" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
                            <span>ANDROID</span>
                        </div>


                        <div class = "modal-body body-alert" style="justify-content: center; align-items: center; display:flex;">
                            <div class = "btn-url"><span>URL:</span></div><input value="${androidUrl}" class = "txt-url" name = "url"/>
                        </div>

                        <div class="modal-footer footer-alert">
                            <button type="button" data-bs-dismiss="modal" class="btn-modal-cancel">Close</button>
                            <button type="submit" class="btn-modal-delete">Edit</button>
                        </div>

                    </div>
                </form>
            </div>

            <div id = "addIosLink" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <form  action="/treegames/admin/link/${post.id}/IOS" method="post" enctype="multipart/form-data" class = "modal-dialog content-alert">
                    <div class = "modal-content">
                        <div class = "modal-header header-alert">
                            <a href="./treegames/home"> <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="140" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
                            <span>IOS</span>
                        </div>


                        <div class = "modal-body body-alert" style="justify-content: center; align-items: center; display:flex;">
                            <div class = "btn-url"><span>URL:</span></div><input value = "${iosUrl}" class = "txt-url" name = "url"/>
                        </div>

                        <div class="modal-footer footer-alert">
                            <button type="button" data-bs-dismiss="modal" class="btn-modal-cancel">Close</button>
                            <button type="submit" class="btn-modal-delete">Edit</button>
                        </div>

                    </div>
                </form>
            </div>

            <div id = "addFacebookLink" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <form  action="/treegames/admin/link/${post.id}/FACEBOOK" method="post" enctype="multipart/form-data" class = "modal-dialog content-alert">
                    <div class = "modal-content">
                        <div class = "modal-header header-alert">
                            <a href="./treegames/home"> <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="140" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
                            <span>FACEBOOK</span>
                        </div>


                        <div class = "modal-body body-alert" style="justify-content: center; align-items: center; display:flex;">
                            <div class = "btn-url"><span>URL:</span></div><input value="${fbUrl}" class = "txt-url" name = "url"/>
                        </div>

                        <div class="modal-footer footer-alert">
                            <button type="button" data-bs-dismiss="modal" class="btn-modal-cancel">Close</button>
                            <button type="submit" class="btn-modal-delete">Edit</button>
                        </div>

                    </div>
                </form>
            </div>

            <div id = "addTwitterLink" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <form  action="/treegames/admin/link/${post.id}/TWITTER" method="post" enctype="multipart/form-data" class = "modal-dialog content-alert">
                    <div class = "modal-content">
                        <div class = "modal-header header-alert">
                            <a href="./treegames/home"> <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="140" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
                            <span>TWITTER</span>
                        </div>


                        <div class = "modal-body body-alert" style="justify-content: center; align-items: center; display:flex;">
                            <div class = "btn-url"><span>URL:</span></div><input class = "txt-url" value="${twUrl}" name = "url"/>
                        </div>

                        <div class="modal-footer footer-alert">
                            <button type="button" data-bs-dismiss="modal" class="btn-modal-cancel">Close</button>
                            <button type="submit" class="btn-modal-delete">Edit</button>
                        </div>

                    </div>
                </form>
            </div>
        </td>


    </tr>




    <tr class = "body-detail">
        <td>
            <div >
                <div align="center" class = "title-type">
                    <img src="https://res.cloudinary.com/yenltn/image/upload/v1636535627/treegames/coollogo_com-220504165_n9uzuq.png" width="220" hspace="0" vspace="8" align="center" />
                    <button class = "btn-add-images"  data-bs-toggle="modal" data-bs-target="#modalAddScreenshot"><span class="iconify" data-icon="grommet-icons:new-window" style="margin-right: 5px"></span>New</button>
                </div>



                <div class="modal fade" id="modalAddScreenshot" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <form action="/treegames/admin/post-screenshots-create/${post.id}" enctype="multipart/form-data" method="post" class="modal-dialog content-alert">
                        <div class="modal-content">
                            <div class="modal-header header-alert">
                                <a href="./treegames/home"> <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="140" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
                                Add new screenshots [${post.title}]
                            </div>
                            <div class="modal-body body-alert" style="justify-content: center; align-items: center; display: flex; flex-direction: column; padding: 40px">
                                <img  class = "avatar-post"  width="200"  id = "scrImage">
                                <input type="hidden" name = "post_id" value="${post.id}">
                                <input type="file"  name = "image" class = "get-file" accept="image/**"  onchange="loadImage(event)" >
                            </div>
                            <div class="modal-footer footer-alert">
                                <button type="button" class="btn-modal-cancel" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn-modal-delete">Save</button>
                            </div>
                        </div>
                    </form>
                </div>


                <%--            <button class = "btn-add-images" data-bs-toggle="modal" data-bs-target="#addnewscreenshots"> Add new ScreenShots</button>--%>

                <c:if test="${screenShotsList.size() == 0}">
                <tr>
                <td>
                    <div align="center">
                    <img src="/imgs/not_have.png" width="250px"/>
                    <label>Not have screen shot in this post.</label>
                    </div>
                </td>
</tr>
                </c:if>
                <c:forEach items="${screenShotsList}" var = "sr" varStatus="loop">
    <tr>
        <td>
            <!-- Button trigger modal -->
            <div align="center">
                <img src="${sr.getPathThumbnail()}" onerror="this.onerror=null; this.src='https://www.wpbeginner.com/wp-content/uploads/2013/04/wp404error.jpg'" hspace="0" vspace="16" align="center" />
            </div>
            <div class = "mt-2 mb-2">
                <button class = "btn-delete-post" data-bs-toggle="modal" data-bs-target="#modalDeleteScreenshot${loop.index}">delete</button>
            </div>

            <c:if test = "${screenShotsList.size() > 1 && (loop.index != screenShotsList.size()-1)}">
                <hr class = "hr">
            </c:if>

            <!-- Modal -->
            <div class="modal fade" id="modalDeleteScreenshot${loop.index}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <form action = "/treegames/admin/post-screenshots-delete/${post.id}/${screenShotsList.get(loop.index).id}" method="get" class="modal-dialog content-alert">

                    <div class = "modal-content">
                        <div class="modal-content-alert">
                            <div class="modal-header header-alert">
                                <a href="./treegames/home"> <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="140" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
                                [DELETE]
                            </div>
                            <div class = "modal-body body-alert">
                                <p>Are you sure delete this screenshots!</p>
                                <div align="center">
                                    <img src="${sr.getPathThumbnail()}" onerror="this.onerror=null; this.src='https://www.wpbeginner.com/wp-content/uploads/2013/04/wp404error.jpg'" hspace="0" vspace="16" align="center" />
                                </div>
                            </div>
                            <div class="modal-footer footer-alert">
                                <button type="button" class="btn-modal-cancel" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn-modal-delete">Delete</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

        </td>
        <td>

        </td>
    </tr>


    </c:forEach>

             </div>
        </td>
    </tr>

    <tr class = "body-detail">
        <td>
            <div align="left">
                <br />
               <div class="modal fade" id="modalAddPilot" tabindex="-1">
                   <form action="/treegames/admin/post-pilot-create/${post.id}" enctype="multipart/form-data" method="post" class="modal-dialog content-alert needs-validation" novalidate>
                       <div class="modal-content">
                           <div class="modal-header header-alert">
                               <a href="./treegames/home"> <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="140" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
                               Add new plot [${post.title}]
                           </div>
                           <div class="modal-body body-alert">
                               <img class = "avatar-post"  width="200" id = "pilotImage">
                               <input type="hidden" name = "post_id" value="${post.id}">
                               <input type="file"  name = "image" class = "get-file" accept="image/**"  onchange="loadPilot(event)" >
                           </div>
                           <div class = "modal-body body-alert">

                               <div class = "div-input-form">
                                   <label class = "lb-title">Content</label>
                                   <div class = "handle-input">
                                   <textarea class = "txt-content" name = "pilot_content" required> </textarea>
                                   <div class="invalid-feedback">
                                       Content cannot null!
                                   </div>
                               </div>

                               </div>
                           </div>
                           <div class="modal-footer footer-alert">
                               <button type="button" class="btn-modal-cancel" data-bs-dismiss="modal">Close</button>
                               <button type="submit" class="btn-modal-delete">Save</button>
                           </div>
                       </div>
                   </form>
               </div>
                <br />
        </td>
    </tr>

    <tr class = "body-detail">
        <td>
            <div>
                <br />
                <div align="center"  class = "title-type">
                    <img width="190" src="https://res.cloudinary.com/yenltn/image/upload/v1636535606/treegames/chae_re6fmp.png" hspace="0" vspace="8" align="center" alt="pilots"/>
                    <button class = "btn-add-images" data-bs-toggle="modal" data-bs-target="#modalAddPilots"> <span class="iconify" data-icon="grommet-icons:new-window" style="margin-right: 5px"></span>New</button>
                </div>

               <div class="modal fade" id="modalAddPilots" tabindex="-1">
                   <form action="/treegames/admin/post-pilots-create/${post.id}" enctype="multipart/form-data" method="post" class="modal-dialog content-alert needs-validation" novalidate>
                       <div class="modal-content">
                           <div class="modal-header header-alert">
                               <a href="./treegames/home"> <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="140" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
                               Add new character [${post.title}]
                           </div>
                           <div class="modal-body body-alert">
                               <img  class = "avatar-post"  width="200"  id = "pilotsImage">
                               <input type="hidden" name = "post_id" value="${post.id}">
                               <input type="file"  name = "image" class = "get-file" accept="image/**"  onchange="loadFileImages(event)" >
                           </div>
                           <div class = "modal-body body-alert">
                               <div class = "div-input-form">
                                   <label class = "lb-title">Fullname: </label>
                                   <div class = "handle-input">
                                   <input class = "txt-content" name="full_name" value="" required>
                                       <div class="invalid-feedback">
                                           Fullname cannot null!
                                       </div>
                                   </div>
                               </div>
                               <div class = "div-input-form">
                                   <label class = "lb-title">Content: </label>
                                   <div class = "handle-input">
                                   <input class = "txt-content" name = "pilots_content" value = "" required>
                                       <div class="invalid-feedback">
                                           Content cannot null!
                                       </div>
                                   </div>
                               </div>
                               <div class = "div-input-form">
                                   <label class = "lb-title">Title:  </label>
                                   <div class = "handle-input">
                                   <input class = "txt-content" name = "pilots_title" value = "" required>
                                       <div class="invalid-feedback">
                                          Title cannot null!
                                       </div>
                                   </div>
                               </div>
                               <div class = "div-input-form">
                                   <label class = "lb-title">Zodiac Sign:</label>
                                   <div class = "handle-input">
                                   <input class = "txt-content" name = "pilots_zodiac_sign" value = "" required>
                                       <div class="invalid-feedback">
                                           Zodiac sign cannot null!
                                       </div>
                                   </div>
                               </div>

                               <div class = "div-input-form">
                                   <label class = "lb-title">Hobbies:</label>
                                   <div class = "handle-input">
                                   <input class = "txt-content" name = "pilots_hobbies" value = "" required>
                                       <div class="invalid-feedback">
                                           Hobbies cannot null!
                                       </div>
                                   </div>
                                   </div>
                               <div class = "div-input-form">
                                   <label class = "lb-title">Bloodtype: </label>
                                   <div class = "handle-input">
                                   <input class = "txt-content" name = "pilots_boodtype" value="" required>
                                       <div class="invalid-feedback">
                                           Bloodtype cannot null!
                                       </div>
                                   </div>
                               </div>
                           </div>
                           <div class="modal-footer footer-alert">
                               <button type="button" class="btn-modal-cancel" data-bs-dismiss="modal">Close</button>
                               <button type="submit"class="btn-modal-delete">Save</button>
                           </div>
                       </div>
                   </form>
               </div>
                <br />

                <c:if test="${pilotsList.size() == 0}">
                    <tr>
                        <td>
                            <div align="center">
                                <img src="/imgs/not_have.png" width="250px"/>
                                <label>Not have character in this post.</label>
                            </div>
                        </td>
                    </tr>
                    </c:if>

                <c:forEach items="${pilotsList}" var = "pilots" varStatus="loop">
                    <div>
                      <div align="center">
                          <p><font style="color: #1c9c25;font-size: 24px;font-style: bold">${pilots.full_name}</font></p>
                          <img src="${pilots.getPathThumbnail()}" onerror="this.onerror=null; this.src='https://www.wpbeginner.com/wp-content/uploads/2013/04/wp404error.jpg'" hspace="0" vspace="8" align="center" />
                      </div>
                        <p>${pilots.content}</p>
                        <p><font style="color: #1c9c25">Full Name:</font> ${pilots.full_name}</p>
                        <p><font style="color: #1c9c25">Title:</font> ${pilots.title}</p>
                        <p><font style="color: #1c9c25">Zodiac Sign:</font>${pilots.zodiac_sign}</p>
                        <p><font style="color: #1c9c25">Hobbies:</font> ${pilots.hobbies}</p>
                        <p><font style="color: #1c9c25">Bloodtype:</font> ${pilots.blood_type}</p>
                    </div>
                    <br />
                <div class = "mt-2 mb-2" align="center">
                    <button class = "btn-edit-post" data-bs-toggle="modal" data-bs-target="#modalEditThumbnailPilots${loop.index}"
                            type="submit">Edit thumbnail</button>
                    <button class = "btn-edit-post" data-bs-toggle="modal" data-bs-target="#modalEditContentPilots${loop.index}"
                            type="submit">Edit content</button>
                    <button class = "btn-delete-post" data-bs-toggle="modal" data-bs-target="#modalDeletePilots${loop.index}">Delete</button>
                </div>

                <c:if test = "${pilotsList.size() > 1 && loop.index != (pilotsList.size()-1)}">
                <hr class = "hr">
                </c:if>

                <!--Modal edit thumbnail pilots-->
                <div id = "modalEditThumbnailPilots${loop.index}" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <form  action="/treegames/admin/post-pilots-thumbnail/${post.id}/${pilots.id}" method="post" enctype="multipart/form-data" class = "modal-dialog content-alert">
                        <div class = "modal-content">
                            <div class = "modal-header header-alert">
                                <a href="./treegames/home"> <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="140" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
                                Edit thumbnail character [${pilots.full_name}]
                            </div>

                            <div class = "modal-body body-alert">
                               <img id = "pilotsEditImages" src="${pilots.getPathThumbnail()}" alt="${pilots.full_name}" />
                                <input type="file"  id = "uploadThumnailPilots" name = "image" class = "get-file" accept="image/**"  onchange="loadImageEditPilots(event)" >
                            </div>
                            <div class="modal-footer footer-alert">
                                <button type="button" data-bs-dismiss="modal" class="btn-modal-cancel">Close</button>
                                <button type="submit" class="btn-modal-delete">Edit</button>
                            </div>

                        </div>
                    </form>
                </div>
                <!--Modal edit content-->
                <div class="modal fade" id="modalEditContentPilots${loop.index}" tabindex="-1">
                    <form action="/treegames/admin/post-pilots-update/${post.id}/${pilots.id}" method="post" class="modal-dialog content-alert needs-validation" novalidate>
                        <div class="modal-content">
                            <div class="modal-header header-alert">
                                <a href="./treegames/home"> <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="140" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
                                Edit Character [${pilots.full_name}]
                            </div>
                            <div class = "modal-body body-alert">
                                <div class = "div-input-form">
                                    <label class = "lb-title">Full name: </label>
                                    <div class = "handle-input">
                                    <input class = "txt-content" value = "${pilots.full_name}" name="full_name" required>
                                    <div class="invalid-feedback">
                                        Full name cannot null!
                                    </div>
                                </div>
                                </div>
                                <div class = "div-input-form">
                                    <label class = "lb-title">Content: </label>
                                    <div class = "handle-input">
                                    <input class = "txt-content" value = "${pilots.content}" name = "pilots_content" required>
                                        <div class="invalid-feedback">
                                            Content cannot null!
                                        </div>
                                    </div>
                                    </div>
                                <div class = "div-input-form">
                                    <label class = "lb-title">Title:  </label>
                                    <div class = "handle-input">
                                    <input class = "txt-content" value = "${pilots.title}" name = "pilots_title" required>
                                        <div class="invalid-feedback">
                                            Title cannot null!
                                        </div>
                                    </div>
                                    </div>
                                <div class = "div-input-form">
                                    <label class = "lb-title">Zodiac Sign:</label>
                                    <div class = "handle-input">
                                    <input class = "txt-content" value  ="${pilots.zodiac_sign}" name = "pilots_zodiac_sign" required>
                                        <div class="invalid-feedback">
                                            Zodiac sign cannot null!
                                        </div>
                                    </div>
                                    </div>
                                <div class = "div-input-form">
                                    <label class = "lb-title">Hobbies:</label>
                                    <div class = "handle-input">
                                    <input class = "txt-content" value  ="${pilots.hobbies}" name = "pilots_hobbies" required>
                                        <div class="invalid-feedback">
                                            Hobbies cannot null!
                                        </div>
                                    </div>
                                </div>
                                <div class = "div-input-form">
                                    <label class = "lb-title">Bloodtype: </label>
                                    <div class = "handle-input">
                                    <input class = "txt-content" value = "${pilots.blood_type}" name = "pilots_boodtype" required>
                                        <div class="invalid-feedback">
                                            Bloodtype cannot null!
                                        </div>
                                    </div>
                                    </div>
                            </div>
                            <div class="modal-footer footer-alert">
                                <button type="button" class="btn-modal-cancel" data-bs-dismiss="modal">Close</button>
                                <button type="submit"class="btn-modal-delete">Edit</button>
                            </div>
                        </div>
                    </form>
                </div>
                <!--Modal delete-->

                <div class="modal fade" id="modalDeletePilots${loop.index}" tabindex="-1">
                    <!-- Modal content -->
                    <form action = "/treegames/admin/post-pilots-delete/${post.id}/${pilotsList.get(loop.index).id}" method="get" class="modal-dialog content-alert">
                        <div class = "modal-content">
                            <div class = "modal-header header-alert">
                                <a href="./treegames/home"> <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="140" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
                                [DELETE]
                            </div>
                            <div class = "modal-body body-alert">
                                <p>Are you sure delete this character!</p>
                                <div align="center">

                                    <p><font style="color: #1c9c25;font-size: 24px;font-style: bold">${pilots.full_name}</font></p>
                                    <img src="${pilots.getPathThumbnail()}" hspace="0" vspace="8" align="center" alt="spinki"/>
                                    <p>${pilots.content}</p>
                                </div>
                                <div align="left">
                                    <p><font style="color: #1c9c25">Full Name:</font> ${pilots.full_name}</p>
                                    <p><font style="color: #1c9c25">Title:</font> ${pilots.title}</p>
                                    <p><font style="color: #1c9c25">Zodiac Sign:</font>${pilots.zodiac_sign}</p>
                                    <p><font style="color: #1c9c25">Hobbies:</font> ${pilots.hobbies}</p>
                                    <p><font style="color: #1c9c25">Bloodtype:</font> ${pilots.blood_type}</p>
                                    <hr size="1" color="#000000" />
                                </div>
                            </div>
                            <div class="modal-footer footer-alert">
                                <button type="button" data-bs-dismiss="modal" class="btn-modal-cancel">Close</button>
                                <button type="submit" class="btn-modal-delete">Delete</button>
                            </div>
                        </div>
                    </form>
                </div>
                </c:forEach>
        </td>
    </tr>

    <tr class = "body-detail">
        <td>
            <div>
                <br />
                <div align="center" class = "title-type">
                    <img src="https://res.cloudinary.com/yenltn/image/upload/v1636535591/treegames/guide_sbsp86.png" width="150" hspace="0" vspace="8" align="center" alt="guides"/>
                    <button class = "btn-add-images" data-bs-toggle="modal" data-bs-target="#modalAddGuides"><span class="iconify" data-icon="grommet-icons:new-window" style="margin-right: 5px"></span>New</button>
                </div>


                <div class="modal fade" id="modalAddGuides" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <form action="/treegames/admin/post-guides-create/${post.id}" enctype="multipart/form-data" method="post" class="modal-dialog content-alert">
                        <div class="modal-content">
                            <div class="modal-header header-alert">
                                <a href="./treegames/home"> <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="140" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
                                Add new guides [${post.title}]
                            </div>
                            <div class="modal-body body-alert">
                                <img  class = "avatar-post"  width="200"  id = "imageGuides">
                                <input type="hidden" name = "post_id" value="${post.id}">
                                <input type="file"  name = "image" class = "get-file" accept="image/**"  onchange="loadGuides(event)" >
                            </div>
                            <div class="modal-footer footer-alert">
                                <button type="button" class="btn-modal-cancel" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn-modal-delete">Save</button>
                            </div>
                        </div>
                    </form>
                </div>
                <c:if test="${guidesList.size() == 0}">
                    <tr>
                        <td>
                            <div align="center">
                                <img src="/imgs/not_have.png" width="250px"/>
                                <label>Not have guides in this post.</label>
                            </div>
                        </td>
                    </tr>
                    </c:if>
                <c:forEach items="${guidesList}" var = "guides" varStatus="loop">
                <div align="center">
                    <img src="${guides.getPathThumbnail()}" onerror="this.onerror=null; this.src='https://www.wpbeginner.com/wp-content/uploads/2013/04/wp404error.jpg'" hspace="0" vspace="8" align="center" alt="fabi"/>
                </div>
                <div class = "mt-2 mb-2">
                    <button class = "btn-delete-post" data-bs-toggle="modal" data-bs-target="#modalDeleteGuides${loop.index}">Delete</button>
                </div>


                <div class="modal fade" id="modalDeleteGuides${loop.index}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <!-- Modal content -->
                    <form action = "/treegames/admin/post-guides-delete/${post.id}/${guidesList.get(loop.index).id}" method="get" class="modal-dialog content-alert">
                        <div class = "modal-content">
                            <div class = "modal-header header-alert">
                                <a href="./treegames/home"> <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="140" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
                                [DELETE]
                            </div>
                            <div class = "modal-body body-alert">
                                <p>Are you sure delete this guides!</p>
                                <div align="center">
                                    <img src="${guides.getPathThumbnail()}" hspace="0" vspace="8" align="center" alt="fabi"/>
                                </div>
                            </div>
                            <div class="modal-footer footer-alert">
                                <button type="button" data-bs-dismiss="modal" class="btn-modal-cancel">Close</button>
                                <button type="submit" class="btn-modal-delete">Delete</button>
                            </div>
                        </div>
                    </form>
                </div>
                </c:forEach>
        </td>
    </tr>

    <tr>
        <td>
            <div align="center">
                <br />
                <a name="download">
                    <img src="https://dotgears.com/download.gif" hspace="0" vspace="8" align="center" alt="download"/>
                    <br />
                    <a data-bs-toggle="modal" data-bs-target="#addIosLink" style="cursor: pointer" > <img src="<c:url value= '/imgs/ios.png'/>" alt="App Store" hspace="4" vspace="0" ></a>
                    <a data-bs-toggle="modal" data-bs-target="#addAndroidLink" style="cursor: pointer"> <img src="<c:url value= '/imgs/googleplay.png'/>" alt="CH Store" hspace="4" vspace="0" ></a>
                    <div id="countdown"></div>
                    <div class="note"></div>
            </div>
        </td>
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
                <a href="./press/index.html"> <img src="https://dotgears.com/presskit.png" alt="Presskit"  hspace="0" vspace="0"/></a>
            </div>
        </td>
    </tr>

    <tr>
        <td>
            <div align="center">
                <a href="/dotgears/admin/post"> <img src="https://dotgears.com/home.png" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
            </div>
        </td>
    </tr>

    <td>
        <div align="center">
            <img src="https://dotgears.com/knight.gif" hspace="8" vspace="8" align="center" />
        </div>
    </td>

    </tr>




</table>
<%@include file="common/footer.jsp"%>

<div id = "modalEditThumbnailPost" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form  action="/treegames/admin/post-upload-thumbnail/${post.id}" method="post" enctype="multipart/form-data" class = "modal-dialog content-alert">
        <div class = "modal-content">
            <div class = "modal-header header-alert">
                <img  height="50" width="140"  src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"   hspace="0" vspace="0"/>
                [EDIT]
            </div>

            <div class = "modal-body body-alert">
                    <a href="/treegames/" style="color: #17a554; font-size: 12px; font-weight: bold"> <img id = "thumbnail" name = "thumbnail" onerror="this.onerror=null; this.src='https://www.wpbeginner.com/wp-content/uploads/2013/04/wp404error.jpg'" src="${post.getPathThumbnail()}" alt="${post.title}" width="60" height="60" hspace="8" vspace="0"  align="left" /></a><br />
                    <input type="hidden" name = "post_id" value="${post.id}">
                    <input type="file" id = "uploadThumnail"   name = "thumbnail" class = "get-file" accept="image/**"  onchange="loadThumnail(event)" >
<%--                    <button class = "btn-add-images mt-2 mb-2" type="submit">Change Image</button>--%>
            </div>
            <div class="modal-footer footer-alert">
                <button type="button" data-bs-dismiss="modal" class="btn-modal-cancel">Close</button>
                <button type="submit" class="btn-modal-delete">Edit</button>
            </div>

        </div>
    </form>
</div>


<div id = "modalEditContentPost" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <form  name = "formEditPost" action="/treegames/admin/post-update-content" method="post" class = "modal-dialog content-alert needs-validation" novalidate>
       <div class = "modal-content">
           <div class = "modal-header header-alert">
               <img  height="50" width="140"  src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"   hspace="0" vspace="0"/>
               [EDIT]
           </div>

          <div class = "modal-body body-alert">
                  <div class = "modal-body body-alert">
                  <input type="hidden" name = "post_id" value="${post.id}">
                                      <div class = "div-input-form">
                                          <label class = "lb-title">Title post:</label>
                                          <div class = "handle-input">
                                          <input class = "txt-content"id = contentEditPost name = "title" style="text-transform: uppercase;" value="${post.title}" required>
                                              <div class="invalid-feedback">
                                              Title post cannot null!
                                          </div>
                                          </div>
                                      </div>
                                      <hr size="2" color="#000000" />
                                     <div  class = "div-input-form">
                                         <label class = "lb-title">Content post</label>
                                         <div class = "handle-input">
                                         <input class = "txt-content" name = "content" value = "${post.content}" required>
                                             <div class="invalid-feedback">
                                                 Content cannot null!
                                             </div>
                                         </div>
                                         </div>
                                        <div  class = "div-input-form">
                                            <label class = "lb-title">Genre: </label>
                                            <div class = "handle-input">
                                            <input class = "txt-content" name = "genre" value = "${post.genre}" >

                                        </div>
                                        </div>
                                      <div  class = "div-input-form">
                                          <label class = "lb-title"> Rate:</label>
                                          <div class = "handle-input">
                                          <input class = "txt-content" name = "rate" value = "${post.rate}" >
                                          </div>
                                      </div>
                                        <div class = "div-input-form">
                                            <label class = "lb-title">Release Date: </label>
                                            <div class = "handle-input">
                                            <input class = "txt-content" name = "release_date" value="${post.release_date}" >
                                            </div>
                                        </div>
                                      <div class = "div-input-form">
                                          <label class = "lb-title">Developer: </label>
                                              <div class = "handle-input">
                                                  <input class = "txt-content" name = "developer" value = "${post.developer}" >
                                          </div>
                                      </div>

                      </div>

          </div>
           <div class="modal-footer footer-alert">
               <button type="button" data-bs-dismiss="modal" class="btn-modal-cancel">Close</button>
               <button type="submit" class="btn-modal-delete">Edit</button>
           </div>

       </div>
       </form>
</div>

<!--modal modifies detail post!-->

<div id="modalDeletePost" class="modal-delete">
<!-- Modal content -->
    <form action = "/treegames/admin/post-delete/${post.id}" method="get" class="content-alert">
        <div class = "modal-header header-alert">
            <img  height="50" width="140"  src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"   hspace="0" vspace="0"/>
            [DELETE]
        </div>
        <div class = "modal-body body-alert">
            <p>Are you sure delete this post!</p>
        </div>
        <div class="modal-footer footer-alert">
            <button type="button" id = "closeDeletePost" class="btn-modal-cancel">Close</button>
            <button type="submit" class="btn-modal-delete">Delete</button>
        </div>
    </form>
</div>

<button onclick="topFunction()" id="scrollBtn" title="Go to top"><span style="font-size: 25px" class="iconify" data-icon="cil:arrow-circle-top"></span></button>

<!--end modifies-->
<script>

    (function () {
        'use strict'

        var forms = document.querySelectorAll('.needs-validation')
        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }
                    form.classList.add('was-validated')
                }, false)
            })
    })()

    var loadThumnail = function(event) {
        var image = document.getElementById('thumbnail');
        image.src = URL.createObjectURL(event.target.files[0]);
        image.onchange = function () {
            if(this.file[0].size > 1048576) {
                alert("Thumbnail must be only 1MB");
                this.value = "";
            }
        }
    };

    var loadImageEditPilots = function(event) {
        var image = document.getElementById('pilotsEditImage');
        image.src = URL.createObjectURL(event.target.files[0]);
    };

    var loadFileImages = function(event) {
        var image = document.getElementById('pilotsImage');
        image.src = URL.createObjectURL(event.target.files[0]);
        image.onchange = function () {
            if(this.file[0].size > 1048576) {
                alert("Thumbnail must be only 1MB");
                this.value = "";
            }
        }
    };

    var loadGuides = function(event) {
        var image = document.getElementById('imageGuides');
        image.src = URL.createObjectURL(event.target.files[0]);
        image.onchange = function () {
            if(this.file[0].size > 1048576) {
                alert("Thumbnail must be only 1MB");
                this.value = "";
            }
        }
    };

    var loadImage = function(event) {
        var image = document.getElementById('scrImage');
        image.src = URL.createObjectURL(event.target.files[0]);
        image.onchange = function () {
            if(this.file[0].size > 1048576) {
                alert("Thumbnail must be only 1MB");
                this.value = "";
            }
        }
    };

    var loadPilot = function(event) {
        var image = document.getElementById('pilotImage');
        image.src = URL.createObjectURL(event.target.files[0]);
        image.onchange = function () {
            if(this.file[0].size > 1048576) {
                alert("Thumbnail must be only 1MB");
                this.value = "";
            }
        }
    };

    var modalDeletePost = document.getElementById("modalDeletePost");
    var btnDeletePost = document.getElementById("btnDeletePost");
    var span = document.getElementById("closeDeletePost");

    btnDeletePost.onclick = function() {
        modalDeletePost.style.display = "block";
    }

    span.onclick = function() {
        modalDeletePost.style.display = "none";
    }

    window.onclick = function(event) {
        if (event.target == modalDeletePost) {
            modalDeletePost.style.display = "none";
        }
    }

    mybutton = document.getElementById("scrollBtn");

    // When the user scrolls down 20px from the top of the document, show the button
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
</script>
</body>
</html>