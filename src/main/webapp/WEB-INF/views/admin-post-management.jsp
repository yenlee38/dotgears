<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" dir="ltr">
<head>
    <link rel="shortcut icon" href="https://res.cloudinary.com/yenltn/image/upload/v1636517772/treegames_yt3kx9.png" type="image/large-icon" sizes="48x48" />
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin home</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <!-- Bootstrap -->
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css" type="text/css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js" type="text/javascript"></script>

</head>
<style>

    .card {
        width: 80vw !important;
    }

    svg {
        fill: white;
    }

    thead {
        background-color:#0C213A;
        color: white;
        font-weight: 400;
        line-height: 1.5;
        align-items: center;
        text-align: center;
        letter-spacing: 0.5px;
    }

    th {
        font-weight: 500;
        line-height: 1.5;
    }

    .btn-edit-admin {
        justify-content: center;
        align-items: center;
        display: flex;
        flex-direction: row;
    }

    a {
        text-decoration: none !important;
        cursor: pointer;
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
        letter-spacing: 0.5px;
    }

    .modal-header {
        justify-content: flex-start !important;
    }


    .header-alert {
        background-color: #00A8CC;
        color: white;
        font-weight: 500;
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
        margin-top: 10vh;
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

    @media (min-width: 660px) {
        .card {
            width: 450px !important;
        }
    }

    @media (min-width: 860px) {
        .card {
            width: 550px !important;
        }
    }

    @media (min-width: 1000px) {
        .card {
            width: 880px !important;
        }
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

    .btn-add-post {
        outline: none;
        border-radius: 3px;
        color: #150050;
        font-weight: 500;
        padding-right: 8px;
        padding-left: 8px;
        padding-top: 4px;
        padding-bottom: 5px;
        background-color: rgba(23,97,253,0.1);
        border: none;
        margin-left: 5px;
        margin-right: 5px;
        transition: all 1s;
    }

        td {
            font-size: 0.9rem;
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
        box-shadow: 0 2px 5px 0 rgb(0 0 0  /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
        font-weight: 500;
        font-size: 0.85rem;
        line-height: 1.5;
    }

    .btn-add-post:hover {
        background-color: #39A2DB;
        font-weight: 600;
        color: white;
    }

    .btn-add-images:hover {
        background-color: #39A2DB;
        font-weight: 600;
        color: white;
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
        box-shadow: 0 2px 5px 0 rgb(0 0 0  /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
        font-weight: 500;
        font-size: 0.85rem;
        line-height: 1.5;
    }

    .btn-modal-delete:hover{
        font-weight: 600;
        background-color: #950101;
        color: white;
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
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
        font-weight: 500;
        font-size: 0.85rem;
        line-height: 1.5;

    }

    .btn-modal-cancel:hover {
        font-weight: 600;
        background-color: #1C7947;
        color: white;
    }

    .content {
        /*justify-content:center;*/
        /*flex-direction: row;*/
        /*display: flex;*/
        /*width: 100%;*/

    }

    .table-account{
        display: block;
    }

    .btn {
        display: inline-block;
    }

    .search-div {
        display: inline-block;
    }

    .form-control:focus {
        outline: none !important;
        box-shadow: none !important;
    }

    .form-group {
        display: flex;
        margin-bottom: 0 !important;
        width: 30rem;
    }

    .form-group i {
        position: absolute;
        font-size: 1rem;
        font-weight: 200;
        margin-top: 10px;
        margin-left: 19px;
        color: rgb(194, 193, 193);
    }

    .search-input {
        font-size: 0.8rem;
        color: rgb(43, 41, 41);
    }

    .form-group .form-control {
        border-radius: 50px;
        padding-left: 38px;
        margin-left: 0px;
    }

    .container {
        justify-content: center;
        align-items: center;
        display: flex;
        margin-top: 20px;
    }

    .main_screen {
        display: flex;
        justify-content: center;
        flex-direction: column;

    }

    .table-account {
        margin-top: 20px;
    }

    .txt-input {
        outline: none;
        border-radius: 5px;
        border: solid 1px #aaa;
        padding: 5px;
    }

    .group-input {
        padding: 5px;
        justify-content: center;
        align-items: center;
        display: flex;

    }

    textarea {
        resize: none;
        overflow: hidden;
        min-height: 100px;
        padding: 10px;
        box-shadow:0 4px 6px rgba(0,0,0,0.1);
    }

    .btn-status {
        background-color: #64C9CF;
        color: white;
        font-weight: 400;
        border-radius: 5px;
        border: none;
        padding: 5px;
        box-shadow: 0 2px 5px 0 rgb(0 0 0  /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
        font-weight: 500;
        font-size: 0.75rem;
        line-height: 1.5;
    }

    .btn-denied {
        background-color: #FF2442;

    }

    .btn-published {
        background-color: #57CC99;

    }
    /* Google Fonts Import Link */
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        /*font-family: 'Poppins', sans-serif;*/
    }
    .sidebar{
        position: fixed;
        top: 0;
        left: 0;
        height: 100%;
        width: 260px;
        background: #11101d;
        z-index: 100;
        transition: all 0.5s ease;
    }
    .sidebar.close{
        width: 78px;
    }
    .sidebar .logo-details{
        height: 60px;
        width: 100%;
        display: flex;
        align-items: center;
    }
    .sidebar .logo-details i{
        font-size: 30px;
        color: #fff;
        height: 50px;
        min-width: 78px;
        text-align: center;
        line-height: 50px;
    }
    .sidebar .logo-details .logo_name{
        font-size: 22px;
        color: #fff;
        font-weight: 600;
        transition: 0.3s ease;
        transition-delay: 0.1s;
    }
    .sidebar.close .logo-details .logo_name{
        transition-delay: 0s;
        opacity: 0;
        pointer-events: none;
    }
    .sidebar .nav-links{
        height: 100%;
        padding: 30px 0 150px 0;
        overflow: auto;
    }
    .sidebar.close .nav-links{
        overflow: visible;
    }
    .sidebar .nav-links::-webkit-scrollbar{
        display: none;
    }
    .sidebar .nav-links li{
        position: relative;
        list-style: none;
        transition: all 0.4s ease;
    }
    .sidebar .nav-links li:hover{
        background: #1d1b31;
    }
    .sidebar .nav-links li .iocn-link{
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
    .sidebar.close .nav-links li .iocn-link{
        display: block
    }
    .sidebar .nav-links li i{
        height: 50px;
        min-width: 78px;
        text-align: center;
        line-height: 50px;
        color: #fff;
        font-size: 20px;
        cursor: pointer;
        transition: all 0.3s ease;
    }
    .sidebar .nav-links li.showMenu i.arrow{
        transform: rotate(-180deg);
    }
    .sidebar.close .nav-links i.arrow{
        display: none;
    }
    .sidebar .nav-links li a{
        display: flex;
        align-items: center;
        text-decoration: none;
    }
    .sidebar .nav-links li a .link_name{
        font-size: 18px;
        font-weight: 400;
        color: #fff;
        transition: all 0.4s ease;
    }
    .sidebar.close .nav-links li a .link_name{
        opacity: 0;
        pointer-events: none;
    }
    .sidebar .nav-links li .sub-menu{
        padding: 6px 6px 14px 80px;
        margin-top: -10px;
        background: #1d1b31;
        display: none;
    }
    .sidebar .nav-links li.showMenu .sub-menu{
        display: block;
    }
    .sidebar .nav-links li .sub-menu a{
        color: #fff;
        font-size: 15px;
        padding: 5px 0;
        white-space: nowrap;
        opacity: 0.6;
        transition: all 0.3s ease;
    }
    .sidebar .nav-links li .sub-menu a:hover{
        opacity: 1;
    }
    .sidebar.close .nav-links li .sub-menu{
        position: absolute;
        left: 100%;
        top: -10px;
        margin-top: 0;
        padding: 10px 20px;
        border-radius: 0 6px 6px 0;
        opacity: 0;
        display: block;
        pointer-events: none;
        transition: 0s;
    }
    .sidebar.close .nav-links li:hover .sub-menu{
        top: 0;
        opacity: 1;
        pointer-events: auto;
        transition: all 0.4s ease;
    }
    .sidebar .nav-links li .sub-menu .link_name{
        display: none;
    }
    .sidebar.close .nav-links li .sub-menu .link_name{
        font-size: 18px;
        opacity: 1;
        display: block;
    }
    .sidebar .nav-links li .sub-menu.blank{
        opacity: 1;
        pointer-events: auto;
        padding: 3px 20px 6px 16px;
        opacity: 0;
        pointer-events: none;
    }
    .sidebar .nav-links li:hover .sub-menu.blank{
        top: 50%;
        transform: translateY(-50%);
    }
    .sidebar .profile-details{
        position: fixed;
        bottom: 0;
        width: 260px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        background: #1d1b31;
        padding: 12px 0;
        transition: all 0.5s ease;
    }
    .sidebar.close .profile-details{
        background: none;
    }
    .sidebar.close .profile-details{
        width: 78px;
    }
    .sidebar .profile-details .profile-content{
        display: flex;
        align-items: center;
    }
    .sidebar .profile-details img{
        height: 52px;
        width: 52px;
        object-fit: cover;
        border-radius: 16px;
        margin: 0 14px 0 12px;
        background: #1d1b31;
        transition: all 0.5s ease;
    }
    .sidebar.close .profile-details img{
        padding: 10px;
    }
    .sidebar .profile-details .profile_name,
    .sidebar .profile-details .job{
        color: #fff;
        font-size: 18px;
        font-weight: 500;
        white-space: nowrap;
    }
    .sidebar.close .profile-details i,
    .sidebar.close .profile-details .profile_name,
    .sidebar.close .profile-details .job{
        display: none;
    }
    .sidebar .profile-details .job{
        font-size: 12px;
    }
    .home-section{
        position: relative;

        height: 100vh;
        left: 260px;
        width: calc(100% - 260px);
        transition: all 0.5s ease;
    }
    .sidebar.close ~ .home-section{
        left: 78px;
        width: calc(100% - 78px);
    }
    .home-section .home-content{
        height: 60px;
        display: flex;
        align-items: center;
    }
    .home-section .home-content .bx-menu,
    .home-section .home-content .text{
        color: #11101d;
        font-size: 35px;
    }
    .home-section .home-content .bx-menu{
        margin: 0 15px;
        cursor: pointer;
    }
    .home-section .home-content .text{
        font-size: 26px;
        font-weight: 600;
    }
    @media (max-width: 420px) {
        .sidebar.close .nav-links li .sub-menu{
            display: none;
        }
    }

</style>
<body>
<div class="sidebar showMenu">
    <a href="/treegames/home" class="logo-details">
        <i style="margin-top: 30px"><span class="iconify" data-icon="twemoji:letter-t" style="height: 24px; width: 24px; margin-right: 5px"></span></i>
        <span class="logo_name">Treegames</span>
    </a>
    <ul class="nav-links">
        <li>
            <a href="/treegames/admin/post">
                <i class='bx bx-grid-alt' ></i>
                <span class="link_name">Dashboard</span>
            </a>

        </li>


        <li>
            <div class="iocn-link">
                <a href="/treegames/admin/post">
                    <i class='bx bx-book-alt' ></i>
                    <span class="link_name">Posts</span>
                </a>
            </div>
        </li>

       <c:if test="${admin == 'admin'}">
           <li>
               <div class="iocn-link">
                   <a href="/treegames/admin/account">
                       <i class='bx bxs-user-detail' ></i>
                       <span class="link_name">Accounts</span>
                   </a>
               </div>
           </li>
       </c:if>

        <li>
        </li>
        <li>
            <div class="profile-details">
                <div class="profile-content">
                    <img src="/imgs/admin.jpg" alt="profileImg">
                </div>
                <div class="name-job">
                    <div class="profile_name" style="text-transform: uppercase">${admin}</div>
                    <div class="job">
                        <c:if test="${admin != 'admin'}"> Subadmin</c:if>
                        <c:if test="${admin == 'admin'}"> Admin</c:if>
                    </div>
                </div>
                <a href="/logout"><i class='bx bx-log-out' ></i></a>
            </div>
        </li>
    </ul>
</div>
<section class="home-section">
    <div class="home-content" style="margin-left: 50px">
        <button  class = "btn-add-post"  data-bs-toggle="modal" data-bs-target="#addnewpost"> <img width="12" height="12" style="margin-right: 5px" src="/imgs/plus-solid.svg"/>Add new post</button>
        <form action="/treegames/admin/post-search" method="post" class = "search-div">
            <div class="d-flex form-group">
                <i class="fa fa-search icon-search"></i>
                <input class="form-control search-input"  name = "search" placeholder="Search post by title" />
            </div>
        </form>
        </div>
        <div class = "container-div" style="margin-left: 50px">
                <!-- Modal add new post-->
                <div class="modal fade" id="addnewpost" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog content-alert">
                        <form name = "formAddPost" action="/treegames/admin/post-create" method="post" class="modal-content needs-validation" novalidate>
                            <div class="modal-header header-alert"> <span class="iconify" style="width: 24px; height: 24px" data-icon="ic:round-post-add"></span> <span style="margin-left: 5px"> Create new post</span>
                            </div>
                            <div class="modal-body body-alert">
                                <div class = "body-create-post">
                                    <div class = "div-input-form">
                                        <lable class = "lb-title">Title post:</lable>
                                        <div class = "handle-input">
                                            <input class = "txt-content" id="validationCustom01" style="text-transform: uppercase;" name = "title" required/>
                                            <div class="invalid-feedback">
                                                Title post cannot null!
                                            </div>
                                        </div>
                                    </div>

                                    <div class = "div-input-form ">
                                        <lable class = "lb-title">Content post:</lable>
                                        <div class = "handle-input">
                                            <textarea class = "txt-content" id="validationCustom02" name = "content" required></textarea>
                                            <div class="invalid-feedback">
                                                Content post cannot null!
                                            </div>
                                        </div>
                                    </div>

                                    <div class = "div-input-form">
                                        <lable class = "lb-title">Genre:</lable>
                                        <div class = "handle-input">
                                            <input class = "txt-content" id="validationCustom03" name = "genre" />

                                        </div>
                                    </div>
                                    <div class = "div-input-form">
                                        <lable class = "lb-title">Rate:</lable>
                                        <div class = "handle-input">
                                            <input class = "txt-content" id="validationCustom04" name = "rate" />

                                        </div>
                                    </div>

                                    <div class = "div-input-form">
                                        <label class = "lb-title">Release Date: </label>
                                        <div class = "handle-input">
                                        <input class = "txt-content" id="validationCustom06" name = "release_date" value="${post.release_date}" >

                                            </div>
                                    </div>
                                    <div class = "div-input-form">
                                        <lable class = "lb-title">Developer:</lable>
                                        <div class = "handle-input">
                                            <input class = "txt-content" id="validationCustom05" name = "developer" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn-modal-cancel" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn-modal-delete">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class = "table-account">

                    <!-- Page Heading -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary"><span class="iconify" data-icon="bx:bxs-book-bookmark" style="margin-right: 5px"></span>Post Management</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                    <tr>
                                        <th>Title</th>
                                        <th>Content</th>
                                        <th>Updated at</th>
                                        <th>Status</th>
                                        <c:if test = "${admin == 'admin'}">
                                            <th>Account</th>
                                            <th>Action</th>
                                        </c:if>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${listPost}" var = "post" varStatus="loop">
                                        <tr>
                                            <td><a href="/treegames/admin/post-create-detail/${post.id}" style="text-transform: uppercase; color: #39A2DB; font-weight: 500">${post.title}</a></td>
                                            <td>${post.content}</td>
                                            <td>${post.formatDate(post.updated_at)}</td>
                                            <td>
                                                <c:choose>
                                                    <c:when test = "${post.status == 'DENIED'}">
                                                        <button class = "btn-status btn-denied">${post.status}</button>
                                                    </c:when>
                                                    <c:when test = "${post.status == 'PUBLISHED'}">
                                                        <button class = "btn-status btn-published">${post.status}</button>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <button class = "btn-status">${post.status}</button>
                                                    </c:otherwise>
                                                </c:choose>

                                            </td>
                                            <c:if test = "${admin == 'admin'}">
                                                <td>${post.created_by}</td>
                                                <td><div class = "">
                                                    <c:if test = "${post.created_by != 'admin'}">

                                                        <c:choose>
                                                            <c:when test="${post.status == 'DENIED'}">

                                                                    <a  class = "btn-add-images" data-bs-toggle = "modal" data-bs-target = "#confirmpost${loop.index}">Confirm</a>

                                                            </c:when>
                                                            <c:when test = "${post.status == 'PUBLISHED'}">

                                                                    <a  class = "btn-modal-delete" data-bs-toggle = "modal" data-bs-target = "#denypost${loop.index}"> Deny</a>

                                                            </c:when>
                                                            <c:otherwise>
                                                                <div class = "btn-edit-admin">
                                                                    <a  class = "btn-add-images" data-bs-toggle = "modal" data-bs-target = "#confirmpost${loop.index}">Confirm</a>
                                                                    <a  class = "btn-modal-delete" data-bs-toggle = "modal" data-bs-target = "#denypost${loop.index}">Deny</a>
                                                                </div>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:if>
                                                </div>
                                                    <!-- Modal confirm-->
                                                    <div class="modal fade" id="confirmpost${loop.index}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog content-alert">
                                                            <form action = "/treegames/admin/post-confirm" method = "post" class="modal-content">
                                                                <div class="modal-header header-alert">
                                                                    <span class="iconify" data-icon="line-md:confirm-circle" style="height: 24px; width: 24px"></span><span style="margin-left: 5px">Confirm post!</span>
                                                                </div>
                                                                <div class="modal-body body-alert">
                                                                    Are you sure confirm this post? [${listPost.get(loop.index).title}]
                                                                </div>
                                                                <div class="modal-footer footer-alert">
                                                                    <input type="hidden" name= "id" value = "${listPost.get(loop.index).id}"/>
                                                                    <button type="button" class="btn-modal-cancel" data-bs-dismiss="modal">Close</button>
                                                                    <button type="submit" class="btn-add-images">Confirm</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <!--end modal confirmed post-->

                                                    <!-- Modal denied-->
                                                    <div class="modal fade" id="denypost${loop.index}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog content-alert">
                                                            <form action = "/treegames/admin/post-deny" method = "post" class="modal-content">
                                                                <div class="modal-header header-alert">
                                                                    <span class="iconify" data-icon="iconoir:log-denied" style="width: 24px; height: 24px"></span> <span style="margin-left: 5px">Deny post!</span>
                                                                </div>
                                                                <div class="modal-body body-alert">
                                                                    Are you sure deny this post? [${listPost.get(loop.index).title}]
                                                                </div>
                                                                <div class="modal-footer footer-alert">
                                                                    <input type="hidden" name= "id" value = "${listPost.get(loop.index).id}"/>
                                                                    <button type="button" class="btn-modal-cancel" data-bs-dismiss="modal">Close</button>
                                                                    <button type="submit" class="btn-modal-delete">Deny</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <!--end modal denied post-->
                                                </td>
                                            </c:if>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>

    </div>
</section>
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

    function validationAddPost()
    {
        var title = document.forms["formAddPost"]["title"].value;
        if (title == "")
        {
            alert("Please input a title");
            return false;
        }

        var content = document.forms["formAddPost"]["content"].value;
        if (content == "")
        {
            alert("Please input a content");
            return false;
        }

        return true;
    }

</script>
</body>
</html>
