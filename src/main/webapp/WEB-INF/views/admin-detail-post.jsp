<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${post.title}</title>
    <link href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</head>
<style>

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

    .div-input-form {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-top: 5px;
        margin-bottom: 5px;
    }

    .lb-title {
        font-weight: 500;
        color: #1C7947;

    }

    .txt-content {
        padding: 5px;
        border-radius: 5px;
        border: 2px solid #39A388;
        width: 70%;
        outline: #17a554;
    }

    .title-type {
        justify-content: center;
        align-items: center;
        display: flex;
    }

    .hr-post {
        border: 2px solid #000000 !important;
        color: #000000;
        border-width: 2px;
        background-color: #000000 !important;
        margin: 0 !important;
        padding: 0!important;
    }

    hr.hr-post {
        border: 2px solid #000000 !important;
        color: #000000;
        border-width: 2px;
        background-color: #000000 !important;
        margin: 0 !important;
        padding: 0!important;
    }

    .hr {
        border: 1px solid #000000 !important;
        margin-top: 10px;
        margin-bottom: 10px;
    }

    hr {
        border: 1px solid #000000 !important;
    }

    .btn-add-images {
        outline: none;
        border-radius: 5px;
        color: #fff;
        font-weight: 400;
        padding-right: 8px;
        padding-left: 8px;
        padding-top: 4px;
        padding-bottom: 5px;
        background-color: #64C9CF;
        border: none;
        margin-left: 5px;
        margin-right: 5px;
        transition: all 1s;
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
    }

    .btn-delete-post:hover {
        font-weight: 600;
        background-color: #FF2442;
    }

    .get-file::-webkit-file-upload-button {
        visibility: hidden;
    }

    .get-file {
        transition: all 1s;
    }

    .get-file::before {
        content: 'Select some files';
        display: inline-block;
        background: linear-gradient(top, #f9f9f9, #e3e3e3);
        border: 1px solid #1C7947;
        border-radius: 3px;
        padding: 5px 8px;
        outline: none;
        white-space: nowrap;
        -webkit-user-select: none;
        cursor: pointer;
        text-shadow: 1px 1px #fff;
        font-weight: 700;
        font-size: 10pt;
    }

    .get-file:hover::before {
        border-color: black;
        color: #01937C;
    }
    .get-file:active::before {
        background: -webkit-linear-gradient(top, #e3e3e3, #f9f9f9);
    }

    /* The Modal (background) */
    .modal-delete {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /*.modal-dialog {*/
    /*    z-index: 1000000 !important;*/
    /*}*/

    .header-alert {
        padding: 2px 16px;
        background-color: #5cb85c;
        color: white;
        font-weight: 500;
    }

    /* Modal Body */
    .body-alert {
        padding: 16px 16px;
        font-weight: 500;
    }

    /* Modal Footer */
    .footer-alert {
        padding: 2px 16px;
        /*background-color: #5cb85c;*/
        color: white;
        display: flex;
        justify-content: flex-end;
        align-items: center;
        /*background-color: rgb(0,0,0); !* Fallback color *!*/
        background-color:#F6F6F6;
    }


    /* Modal Content/Box */
    .content-alert {
        background-color: #fefefe;
        margin: 15% auto; /* 15% from the top and centered */
        padding: 20px;
        border: 1px solid #888;
        border-radius: 8px;
        width: 50%; /* Could be more or less, depending on screen size */
        -webkit-animation-name: animatetop;
        -webkit-animation-duration: 0.4s;
        animation-name: animatetop;
        animation-duration: 0.4s;
        z-index: 10000 !important;
    }

    /* The Close Button */
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

    /* Add Animation */
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
    }

    .btn-modal-delete:hover{
        font-weight: 600;
        background-color: #950101;
    }

    .btn-modal-cancel {
        background-color: #5cb85c;
        padding: 5px;
        border: none;
        outline: none;
        border-radius: 5px;
        font-weight: 400;
        color: white;
        transition: 1s all;
    }

    .btn-modal-cancel:hover {
        font-weight: 600;
        background-color: #1C7947;
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

</style>
<body >
<%@include file="common/nav-admin.jsp"%>
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
                <a href="/qanyn/post-deatail/${post.id}" style="text-transform: uppercase; color: #17a554; font-size: 12px; font-weight: bold"> <img src="${post.getPathThumbnail()}" onerror="this.onerror=null; this.src='https://www.wpbeginner.com/wp-content/uploads/2013/04/wp404error.jpg'" alt="${post.title}" width="60" height="60" hspace="8" vspace="0"  align="left" />${post.title}</a>
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
                <button class = "btn-modal-cancel" data-bs-toggle="modal" data-bs-target="#modalEditThumbnailPost"
                        type="submit">Edit thumbnal</button>
                <button class = "btn-modal-cancel" data-bs-toggle="modal" data-bs-target="#modalEditContentPost"
                        type="submit">Edit content</button>
                <button class = "btn-delete-post" id="btnDeletePost">
                   Delete</button>

            </div>
        </td>
    </tr>



    <tr class = "body-detail">
        <td>
            <div >
                <div align="center" class = "title-type">
                    <img src="https://dotgears.com/screenshots.png" hspace="0" vspace="8" align="center" />
                    <button class = "btn-add-images"  data-bs-toggle="modal" data-bs-target="#modalAddScreenshot">New</button>
                </div>

              <div class="modal fade" id="modalAddScreenshot" tabindex="-1">
                  <form action="/qanyn/admin/post-screenshots-create/${post.id}" enctype="multipart/form-data" method="post" class="modal-dialog content-alert">
                      <div class="modal-content">
                          <div class="modal-header header-alert">
                             Add new screenshots [${post.title}]
                          </div>
                          <div class="modal-body body-alert" >
                              <img  class = "avatar-post"  width="200"  id ="scrImage">
                              <input type="hidden" name = "post_id" value="${post.id}">
                              <input type="file"  name = "image" class = "get-file" accept="image/**"  onchange="scrImage(event)" >
                          </div>
                          <div class="modal-footer footer-alert">
                              <button type="button" class="btn-modal-cancel" data-bs-dismiss="modal">Close</button>
                              <button type="submit" class="btn-modal-delete">Save</button>
                          </div>
                      </div>
                  </form>
              </div>

                <%--            <button class = "btn-add-images" data-bs-toggle="modal" data-bs-target="#addnewscreenshots"> Add new ScreenShots</button>--%>

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
                <form action = "/qanyn/admin/post-screenshots-delete/${post.id}/${screenShotsList.get(loop.index).id}" method="get" class="modal-dialog content-alert">

                    <div class = "modal-content">
                        <div class="modal-content-alert">
                            <div class="modal-header header-alert">
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
                <div align="center" class="title-type">
                    <img src="https://dotgears.com/scopters2/swingcopters2/plot.gif" hspace="0" vspace="8" align="center" alt="plot"/>
                    <button class = "btn-add-images" data-bs-toggle="modal" data-bs-target="#modalAddPilot">New</button>
                </div>

               <div class="modal fade" id="modalAddPilot" tabindex="-1">
                   <form action="/qanyn/admin/post-pilot-create/${post.id}" enctype="multipart/form-data" method="post" class="modal-dialog content-alert">
                       <div class="modal-content">
                           <div class="modal-header header-alert">
                               Add new pilot [${post.title}]
                           </div>
                           <div class="modal-body body-alert">
                               <img class = "avatar-post"  width="200" id = "pilotImage">
                               <input type="hidden" name = "post_id" value="${post.id}">
                               <input type="file"  name = "image" class = "get-file" accept="image/**"  onchange="loadPilot(event)" >
                           </div>
                           <div class = "modal-body body-alert">

                               <div class = "div-input-form">
                                   <label class = "lb-title">Content</label>
                                   <textarea class = "txt-content" name = "pilot_content" > </textarea>

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
                <c:forEach items="${pilotList}" var = "pilot" varStatus="loop">
                <div>
                    <div align="center">
                    <p>${pilot.content}</p>
                    </div>
                    <div align="center">
                        <img src="${pilot.getPathThumbnail()}" onerror="this.onerror=null; this.src='https://www.wpbeginner.com/wp-content/uploads/2013/04/wp404error.jpg'" hspace="4" vspace="0" horizontal-align="center" vertical-align="top" />
                    </div>

                    <div class = "mt-2 mb-2">
                        <button class = "btn-delete-post" data-bs-toggle="modal" data-bs-target="#modalDeletePilot${loop.index}">Delete</button>
                    </div>

                    <c:if test = "${pilotList.size() > 1 && (loop.index != pilotList.size()-1)}">
                    <hr class = "hr">
                    </c:if>

                    <div class="modal fade" id="modalDeletePilot${loop.index}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <!-- Modal content -->
                        <form action = "/qanyn/admin/post-pilot-delete/${post.id}/${pilotList.get(loop.index).id}" method="get" class="modal-dialog content-alert">
                           <div class = "modal-content">
                               <div class = "modal-header header-alert">
                                   [DELETE]
                               </div>
                               <div class = "modal-body body-alert">
                                   <p>Are you sure delete this pilot!</p>
                                   <div align="center">
                                       <p>${pilot.content}</p>
                                   </div>
                                   <div align="center">
                                       <img src="${pilot.getPathThumbnail()}" onerror="this.onerror=null; this.src='https://www.wpbeginner.com/wp-content/uploads/2013/04/wp404error.jpg'" hspace="4" vspace="0" horizontal-align="center" vertical-align="top"  />
                                   </div>
                               </div>
                               <div class="modal-footer footer-alert">
                                   <button type="button" class="btn-modal-cancel" data-bs-dismiss="modal">Close</button>
                                   <button type="submit" class="btn-modal-delete">Delete</button>
                               </div>
                           </div>
                        </form>
                    </div>

                    <div>
                </c:forEach>

        </td>
    </tr>

    <tr class = "body-detail">
        <td>
            <div>
                <br />
                <div align="center"  class = "title-type">
                    <img src="https://dotgears.com/scopters2/swingcopters2/pilots.png" hspace="0" vspace="8" align="center" alt="pilots"/>
                    <button class = "btn-add-images" data-bs-toggle="modal" data-bs-target="#modalAddPilots">New</button>
                </div>

               <div class="modal fade" id="modalAddPilots" tabindex="-1">
                   <form action="/qanyn/admin/post-pilots-create/${post.id}" enctype="multipart/form-data" method="post" class="modal-dialog content-alert">
                       <div class="modal-content">
                           <div class="modal-header header-alert">
                              Add new pilots [${post.title}]
                           </div>
                           <div class="modal-body body-alert">
                               <img  class = "avatar-post"  width="200"  id = "pilotsImage">
                               <input type="hidden" name = "post_id" value="${post.id}">
                               <input type="file"  name = "image" class = "get-file" accept="image/**"  onchange="loadFileImages(event)" >
                           </div>
                           <div class = "modal-body body-alert">
                               <div class = "div-input-form">
                                   <label class = "lb-title">Full name: </label>
                                   <input class = "txt-content" name="full_name" value="">
                               </div>
                               <div class = "div-input-form">
                                   <label class = "lb-title">Content: </label>
                                   <input class = "txt-content" name = "pilots_content" value = "">
                               </div>
                               <div class = "div-input-form">
                                   <label class = "lb-title">Title:  </label>
                                   <input class = "txt-content" name = "pilots_title" value = "">
                               </div>
                               <div class = "div-input-form">
                                   <label class = "lb-title">Zodiac Sign:</label>
                                   <input class = "txt-content" name = "pilots_zodiac_sign" value = "">
                               </div>
                               <div class = "div-input-form">
                                   <label class = "lb-title">Bloodtype: </label>
                                   <input class = "txt-content" name = "pilots_boodtype" type="number" value="0">
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



                <c:forEach items="${pilotsList}" var = "pilots" varStatus="loop">
                    <div>
                        <p><font style="color: #1c9c25;font-size: 24px;font-style: bold">${pilots.full_name}</font></p>
                        <img src="${pilots.getPathThumbnail()}" onerror="this.onerror=null; this.src='https://www.wpbeginner.com/wp-content/uploads/2013/04/wp404error.jpg'" hspace="0" vspace="8" align="center" />
                        <p>${pilots.content}</p>
                        <p><font style="color: #1c9c25">Full Name:</font> ${pilots.full_name}</p>
                        <p><font style="color: #1c9c25">Title:</font> ${pilots.title}</p>
                        <p><font style="color: #1c9c25">Zodiac Sign:</font>${pilots.zodiac_sign}</p>
                        <p><font style="color: #1c9c25">Hobbies:</font> ${pilots.hobbies}</p>
                        <p><font style="color: #1c9c25">Bloodtype:</font> ${pilots.blood_type}</p>
                    </div>
                    <br />
                <div class = "mt-2 mb-2">
                    <button class = "btn-modal-cancel" data-bs-toggle="modal" data-bs-target="#modalEditThumbnailPilots${loop.index}"
                            type="submit">Edit thumbnal</button>
                    <button class = "btn-modal-cancel" data-bs-toggle="modal" data-bs-target="#modalEditContentPilots${loop.index}"
                            type="submit">Edit content</button>
                    <button class = "btn-delete-post" data-bs-toggle="modal" data-bs-target="#modalDeletePilots${loop.index}">Delete</button>
                </div>

                <c:if test = "${pilotsList.size() > 1 && loop.index != (pilotsList.size()-1)}">
                <hr class = "hr">
                </c:if>

                <!--Modal edit thumbnail pilots-->
                <div id = "modalEditThumbnailPilots${loop.index}" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <form  action="/qanyn/admin/post-pilots-thumbnail/${post.id}/${pilots.id}" method="post" enctype="multipart/form-data" class = "modal-dialog content-alert">
                        <div class = "modal-content">
                            <div class = "modal-header header-alert">
                                Edit thumbnail pilots [${pilots.full_name}]
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
                    <form action="/qanyn/admin/post-pilots-update/${post.id}/${pilots.id}" method="post" class="modal-dialog content-alert">
                        <div class="modal-content">
                            <div class="modal-header header-alert">
                                Edit pilots [${pilots.full_name}]
                            </div>
                            <div class = "modal-body body-alert">
                                <div class = "div-input-form">
                                    <label class = "lb-title">Full name: </label>
                                    <input class = "txt-content" value = "${pilots.full_name}" name="full_name" value="">
                                </div>
                                <div class = "div-input-form">
                                    <label class = "lb-title">Content: </label>
                                    <input class = "txt-content" value = "${pilots.content}" name = "pilots_content" value = "">
                                </div>
                                <div class = "div-input-form">
                                    <label class = "lb-title">Title:  </label>
                                    <input class = "txt-content" value = "${pilots.title}" name = "pilots_title" value = "">
                                </div>
                                <div class = "div-input-form">
                                    <label class = "lb-title">Zodiac Sign:</label>
                                    <input class = "txt-content" value  ="${pilots.zodiac_sign}" name = "pilots_zodiac_sign" value = "">
                                </div>
                                <div class = "div-input-form">
                                    <label class = "lb-title">Bloodtype: </label>
                                    <input class = "txt-content" value = "${pilots.blood_type}" name = "pilots_boodtype" type="number" value="0">
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
                    <form action = "/qanyn/admin/post-pilots-delete/${post.id}/${pilotsList.get(loop.index).id}" method="get" class="modal-dialog content-alert">
                        <div class = "modal-content">
                            <div class = "modal-header header-alert">
                                [DELETE]
                            </div>
                            <div class = "modal-body body-alert">
                                <p>Are you sure delete this pilots!</p>
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
                    <img src="https://dotgears.com/scopters2/swingcopters2/guide.png" hspace="0" vspace="8" align="center" alt="guides"/>
                    <button class = "btn-add-images" data-bs-toggle="modal" data-bs-target="#modalAddGuides">New</button>
                </div>


                <div class="modal fade" id="modalAddGuides" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <form action="/qanyn/admin/post-guides-create/${post.id}" enctype="multipart/form-data" method="post" class="modal-dialog content-alert">
                        <div class="modal-content">
                            <div class="modal-header header-alert">
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

                <c:forEach items="${guidesList}" var = "guides" varStatus="loop">
                <div align="center">
                    <img src="${guides.getPathThumbnail()}" onerror="this.onerror=null; this.src='https://www.wpbeginner.com/wp-content/uploads/2013/04/wp404error.jpg'" hspace="0" vspace="8" align="center" alt="fabi"/>
                </div>
                <div class = "mt-2 mb-2">
                    <button class = "btn-delete-post" data-bs-toggle="modal" data-bs-target="#modalDeleteGuides${loop.index}">Delete</button>
                </div>


                <div class="modal fade" id="modalDeleteGuides${loop.index}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <!-- Modal content -->
                    <form action = "/qanyn/admin/post-guides-delete/${post.id}/${guidesList.get(loop.index).id}" method="get" class="modal-dialog content-alert">
                        <div class = "modal-content">
                            <div class = "modal-header header-alert">
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

    <tr class = "body-detail">
        <td>
            <div align="center">

                <br />
                <a name="download">
                    <img src="https://dotgears.com/download.gif" hspace="0" vspace="8" align="center" alt="download"/>
                    <br />
                    <div id="countdown"></div>
                    <div class="note"></div>
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
                <a href="../index.html"> <img src="https://dotgears.com/home.png" alt=".GEARS Home"  hspace="0" vspace="0"/></a>
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
    <form  action="/qanyn/admin/post-upload-thumbnail/${post.id}" method="post" enctype="multipart/form-data" class = "modal-dialog content-alert">
        <div class = "modal-content">
            <div class = "modal-header header-alert">
                [EDIT]
            </div>

            <div class = "modal-body body-alert">
                    <a href="/qanyn/" style="color: #17a554; font-size: 12px; font-weight: bold"> <img id = "thumbnail" name = "thumbnail" onerror="this.onerror=null; this.src='https://www.wpbeginner.com/wp-content/uploads/2013/04/wp404error.jpg'" src="${post.getPathThumbnail()}" alt="${post.title}" width="60" height="60" hspace="8" vspace="0"  align="left" /></a><br />
                    <input type="hidden" name = "post_id" value="${post.id}">
                    <input type="file" id = "uploadThumnail"   name = "thumbnail" class = "get-file" accept="image/**"  onchange="loadThumnail(event)" >
                    <button class = "btn-add-images mt-2 mb-2" type="submit">Change Image</button>
            </div>
            <div class="modal-footer footer-alert">
                <button type="button" data-bs-dismiss="modal" class="btn-modal-cancel">Close</button>
                <button type="submit" class="btn-modal-delete">Edit</button>
            </div>

        </div>
    </form>
</div>


<div id = "modalEditContentPost" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <form  action="/qanyn/admin/post-update-content" method="post" class = "modal-dialog content-alert">
       <div class = "modal-content">
           <div class = "modal-header header-alert">
               [EDIT]
           </div>

          <div class = "modal-body body-alert">
                  <div class = "modal-body body-alert">
                  <input type="hidden" name = "post_id" value="${post.id}">
                                      <div class = "div-input-form">
                                          <label class = "lb-title">Title post:</label>
                                          <input class = "txt-content" name = "title" style="text-transform: uppercase;" value="${post.title}">
                                      </div>
                                      <hr size="2" color="#000000" />
                                     <div  class = "div-input-form">
                                         <label class = "lb-title">Content post</label>
                                         <input class = "txt-content" name = "content" value = "${post.content}">
                                     </div>
                                        <div  class = "div-input-form">
                                            <label class = "lb-title">Genre: </label>
                                            <input class = "txt-content" name = "genre" value = "${post.genre}">
                                        </div>
                                      <div  class = "div-input-form">
                                          <label class = "lb-title"> Rate:</label>
                                          <input class = "txt-content" name = "rate" value = "${post.rate}">
                                      </div>
                                        <div class = "div-input-form">
                                            <label class = "lb-title">Release Date: </label>
                                            <input class = "txt-content" name = "release_date" value="${post.release_date}">
                                        </div>
                                      <div class = "div-input-form">
                                          <label class = "lb-title">Developer: </label>
                                          <input class = "txt-content" name = "developer" value = "${post.developer}">
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
    <form action = "/qanyn/admin/post-delete/${post.id}" method="get" class="content-alert">
        <div class = "modal-header header-alert">
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
<!--end modifies-->
<script>
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
        // image.onchange = function () {
        //     if(this.file[0].size > 1048576) {
        //         alert("Thumbnail must be only 1MB");
        //         this.value = "";
        //     }
        // }
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

    var scrImage = function(event) {
        var image = document.getElementById('scrImage');
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
</script>

<!--modal-->
<!-- Modal new ScreenShots-->

<!--end modal new image post-->
</body>
</html>