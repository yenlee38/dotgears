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

    <script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</head>
<style>


    .card {
        width: 800px !important;
    }

    svg {
        fill: white;
    }

    thead {
        background-color:#0C213A;
        color: white;
        font-weight: 400;
        align-items: center;
        text-align: center;
        line-height: 1.5;
        letter-spacing: 0.5px;
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
        letter-spacing: 0.5px;
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
            width: 850px !important;
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
        box-shadow: 0 2px 5px 0 rgb(0 0 0  /20%), 0 2px 10px 0 rgb(0 0 0 /10%);
    }

    .btn-modal-cancel:hover {
        font-weight: 600;
        background-color: #1C7947;
        color: white;
    }

    .content {
        justify-content:center;
        flex-direction: row;
        display: inline-block;
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

    .title-created {
        display: flex;
        justify-content: center;
        flex-direction: row;
    }

    .content-created {
        margin-top: 20px;
        display: flex;
        justify-content: center;
        flex-direction: row;
    }

    .txt-header-create {
        width: 150px;
        font-weight: bold;
    }

    .input-title {
        outline: none;
        border-radius: 5px;
        border: 1px darkblue solid;
        padding: 5px;
    }

    .input-content {
        outline: none;
        border-radius: 5px;
        border: 1px darkblue solid;
    }

    .btn-status {
        background-color: #64C9CF;
        color: white;
        font-weight: 400;
        border-radius: 5px;
        border: none;
        padding: 5px;
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
    /*.sidebar.close{*/
    /*    width: 78px;*/
    /*}*/
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

    .btn-close {
        background-color: white;
        font-size: 10px;
        padding: 10px !important;
        opacity: 1;
        border-radius: 50%;
    }

</style>
<body>
<div class="sidebar showMenu">
    <div class="logo-details">
        <i style="margin-top: 30px"><span class="iconify" data-icon="twemoji:letter-t" style="height: 24px; width: 24px; margin-right: 5px"></span></i>
        <span class="logo_name">Treegames</span>
    </div>
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

    <div class = "container-div" style="margin-left: 50px">
        <div class="home-content">
            <button  class = "btn-add-post"  data-bs-toggle="modal" data-bs-target="#addnewaccount"><img width="12" height="12" style="margin-right: 5px" src="/imgs/plus-solid.svg"/>Add new account</button>
            <div class = "search-div">
                <form action = "/treegames/admin/account-search-account" method = "get" class="d-flex form-group">
                    <i class="fa fa-search icon-search"></i>
                    <input class="form-control search-input"  name = "search" placeholder="search account by username" />
                </form>
            </div>
        </div>
    </div>
    <div class = "container-div"  style="margin-left: 50px">

        <div class = "content">

            <!-- Modal add user-->
            <div class="modal fade" id="addnewaccount" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog content-alert">
                    <form action="/treegames/admin/account-register" method="post" class="modal-content needs-validation" novalidate>
                        <div class="modal-header header-alert">
                            <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="100" alt=".GEARS Home"  hspace="0" vspace="0"/>
                            <h5 class="modal-title" id="exampleModalLabel">Add new account</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body body-alert">
                            <div class = "div-input-form">
                                <label class = "lb-title">Username:</label>
                                <div class = "handle-input">
                                <input class = "txt-content"  id="username"name = "username" required>
                                    <div> <input onchange="checkExistLabel()" disabled = true  style="border: none; color: #FF0000;outline: none " id = "txtCheckUsername"></div>
                                <div class="invalid-feedback">
                                    Username cannot null!
                                </div>
                                </div>
                            </div>
                            <div class = "div-input-form">
                                <label class = "lb-title">Password:</label>
                                <div class = "handle-input">
                                <input type="password" class = "txt-content" id="validationCustom02" name = "password"
                                       onkeyup="check();" required>
                                <div class="invalid-feedback">
                                    Password cannot null!
                                </div>
                                </div>
                            </div>
                            <div class = "div-input-form">
                                <label class = "lb-title">Confirm:</label>
                                <div class = "handle-input">
                                <input type="password" class = "txt-content" id="validationCustom03" name = "matchingPassword" onkeyup="check();"  required>
                                    <span id='message'></span>
                                    <div class="invalid-feedback">
                                    Confirm password cannot null!
                                </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer footer-alert">
                            <button type="button" class="btn-modal-cancel"  data-bs-dismiss="modal" >Close</button>
                            <button type="button" class="btn-modal-delete" id = "addUser" onclick="isExistUsername()">Save</button>
                        </div>
                    </form>
                </div>
            </div>
            <!--end model add user-->
            <div class = "table-account">

                <!-- Page Heading -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary"><span class="iconify" data-icon="bx:bxs-user-account" style="margin-right: 5px"></span>Account Management</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Username</th>
                                    <th>Password</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items = "${lAdmin}" var = "admin"  varStatus="loop">
                                    <tr>
                                        <td class = "txt-username">${admin.username}</td>
                                        <td>${admin.password}</td>
                                        <td>
                                            <c:if test = "${!admin.is_hidden}">
                                                <label>Còn hoạt động</label>
                                            </c:if>
                                            <c:if test = "${admin.is_hidden}">
                                                <label>Ngừng hoạt động</label>
                                            </c:if>
                                        </td>
                                        <td><div class = "">
                                            <a class = "btn-add-images" data-bs-toggle="modal" data-bs-target="#updateAccount${loop.index}">Edit</a>

                                            <!-- Modal add user-->
                                            <div class="modal fade" id="updateAccount${loop.index}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog content-alert">
                                                    <form action="/treegames/admin/account-update" method="post" class="modal-content needs-validation" novalidate>
                                                        <div class="modal-header header-alert">
                                                            <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  style="margin-right: 5px" height="50" width="100" alt=".GEARS Home"  hspace="0" vspace="0"/>
                                                            <h5 class="modal-title">Update account [<c:out value = "${admin.username}"/>]</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body body-alert">
                                                            <input type="hidden" class = "txt-input" name = "id" value = "${admin.id}"/>
                                                            <div class = "div-input-form">
                                                                <label class = "lb-title">Username:</label>
                                                                <div class = "handle-input">
                                                                <input class = "txt-content" id="validationCustom04" name = "username" value = "${admin.username}" placeholder="username" required>
                                                                <div class="invalid-feedback">
                                                                   Username cannot null!
                                                                </div>
                                                                </div>
                                                            </div>
                                                            <div class = "div-input-form">
                                                                <label class = "lb-title">Password:</label>
                                                                <div class = "handle-input">
                                                                <input class = "txt-content" id="validationCustom05" name = "password" value="${admin.password}" placeholder="password" onkeyup="checkUpdate();" required>
                                                                <div class="invalid-feedback">
                                                                    Password cannot null!
                                                                </div>
                                                                </div>
                                                            </div>
                                                            <div class = "div-input-form">
                                                                <label class = "lb-title">Confirm:</label>
                                                                <div class = "handle-input">
                                                                <input class = "txt-content" name = "matchingPassword" id="validationCustom06" value = "${admin.matchingPassword}" placeholder="password" onkeyup="checkUpdate();"   required>
                                                                    <span id='messageUpdate'></span>
                                                                    <div class="invalid-feedback">
                                                                    Confirm password cannot null!
                                                                </div>
                                                                </div>
                                                            </div>
                                                            <div class = "div-input-form">
                                                                <select class = "form-select" action = "select" name = "is_hidden">
                                                                    <c:if test = "${admin.is_hidden}">
                                                                        <option value = "${!admin.is_hidden}" >
                                                                            <lable>Enabled</lable>
                                                                        </option>
                                                                        <option value = "${admin.is_hidden}">
                                                                            <label>Disabled</label>
                                                                        </option>
                                                                    </c:if>
                                                                    <c:if test = "${!admin.is_hidden}">
                                                                        <option value = "${admin.is_hidden}">
                                                                            <lable>Enabled</lable>
                                                                        </option>
                                                                        <option value = "${!admin.is_hidden}">
                                                                            <label>Disabled</label>
                                                                        </option>
                                                                    </c:if>
                                                                </select>
                                                            </div>

                                                        </div>
                                                        <div class="modal-footer footer-alert">
                                                            <button type="button" class="btn-modal-cancel" data-bs-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn-modal-delete">Save changes</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                            <!--end model add user-->

                                            <c:if test="${admin.role != 'ROLE_ADMIN'}">
                                                <a class = "btn-modal-delete"  data-bs-toggle="modal" data-bs-target="#deleteUser${loop.index}">Delete</a>
                                            </c:if>
                                        </div>
                                            <!-- Modal delete user-->
                                            <div class="modal fade" id="deleteUser${loop.index}" tabindex="-1" aria-labelledby="deleteUser" aria-hidden="true">
                                                <form action="/treegames/admin/account-delete" method="post" class="modal-dialog content-alert">
                                                    <div class="modal-content">
                                                        <div class="modal-header header-alert" style="padding: 2px 2px">
                                                            <img src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png"  height="50" width="100" alt=".GEARS Home"  hspace="0" vspace="0"/>
                                                            <h5 class="modal-title" id="deleteUserTitle">Delete user</h5>
                                                        </div>
                                                        <div class="modal-body body-alert">
                                                            Are you sure delete this user? [<c:out value="${lAdmin.get(loop.index).username}"/>]

                                                        </div>
                                                        <div class="modal-footer footer-alert">
                                                            <input type="hidden" name = "id" value="${lAdmin.get(loop.index).id}">
                                                            <button type="button" class="btn-modal-cancel" data-bs-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn-modal-delete">Delete</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>

                                            <!--end modal delete user-->
                                        </td>

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

    var checkUpdate = function() {
        if (document.getElementById('validationCustom05').value ==
            document.getElementById('validationCustom06').value) {
            document.getElementById('messageUpdate').style.color = 'green';
            document.getElementById('messageUpdate').innerHTML = 'Matching';
        } else {
            document.getElementById('messageUpdate').style.color = 'red';
            document.getElementById('messageUpdate').innerHTML = 'Not matching';
        }
    }

    var check = function() {
        if (document.getElementById('validationCustom02').value ==
            document.getElementById('validationCustom03').value) {
            document.getElementById('message').style.color = 'green';
            document.getElementById('message').innerHTML = 'Matching';
        } else {
            document.getElementById('message').style.color = 'red';
            document.getElementById('message').innerHTML = 'Not matching';
        }
    };

    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function () {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
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

    let arrow = document.querySelectorAll(".arrow");
    for (var i = 0; i < arrow.length; i++) {
        arrow[i].addEventListener("click", (e)=>{
            let arrowParent = e.target.parentElement.parentElement;//selecting main parent of arrow
            arrowParent.classList.toggle("showMenu");
        });
    }

    function checkExistLabel() {
        let isNotExist = "Exist username!!";
        if (document.getElementById("txtCheckUsername").value == isNotExist) {
            document.getElementById('addUser').setAttribute("type", "button");
        } else   document.getElementById('addUser').setAttribute("type", "submit");
    }

    function isExistUsername (){
        let isNotExist = "Exist username!!";
        console.log("check")
        $.ajax({
            type : "GET",
            url : "${pageContext.request.contextPath}/treegames/admin/account/username",
            data : {
                "username" : $('#username').val()
            },
            success: function(data){
                $('#addUser').prop('type', 'button');
                if(data != isNotExist) {
                    $('#addUser').prop('type', 'submit');
                }
                $('#txtCheckUsername').val(data);
            }
        });
    }

</script>
</body>
</html>
