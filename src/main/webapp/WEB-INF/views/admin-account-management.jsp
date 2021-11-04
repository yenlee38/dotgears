<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin home</title>

    <%--    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">--%>
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>

<style>

    a, img {
        border:none;
    }

    a {
        text-decoration: none !important;
        cursor: pointer;
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
        color: white;
    }

    thead {
        background-color: #002366;
        color: white;
        font-weight: 400;
        align-items: center;
        text-align: center;
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
        color: white;
    }

    .btn-modal-cancel {
        background-color: #5cb85c;
        padding: 5px;
        border: none;
        outline: none;
        border-radius: 8px;
        font-weight: 400;
        color: white;
        transition: 1s all;
    }

    .btn-modal-cancel:hover {
        font-weight: 600;
        background-color: #1C7947;
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

    #deleteUser {
        width: 50%;
    }
    .txt-username {
        font-weight: 500;
    }

</style>

<body>
<div class = "main_screen">
    <%@include file="common/nav-admin.jsp"%>
    <div class = "container">
        <div class = "content">
            <button  class = "btn-add-images"  data-bs-toggle="modal" data-bs-target="#addnewaccount">Add new account</button>
            <div class = "search-div">
                <form action = "/qanyn/admin/account-search-account" method = "get" class="d-flex form-group">
                    <i class="fa fa-search icon-search"></i>
                    <input class="form-control search-input"  name = "search" placeholder="search account by username" />
                </form>
            </div>
            <!-- Modal add user-->
            <div class="modal fade" id="addnewaccount" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog content-alert">
                    <form action="/qanyn/admin/account-register" method="post" class="modal-content">
                        <div class="modal-header header-alert">
                            <h5 class="modal-title" id="exampleModalLabel">Add new account</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body body-alert">
                                <div class = "div-input-form">
                                    <label class = "lb-title">Username:</label>
                                    <input class = "txt-content" name = "username" placeholder="username">
                                </div>
                                <div class = "div-input-form">
                                    <label class = "lb-title">Password:</label>
                                     <input class = "txt-content" name = "password" placeholder="password">
                                </div>
                                <div class = "div-input-form">
                                    <label class = "lb-title">Confirm password:</label>
                                    <input class = "txt-content" name = "matchingPassword" placeholder="password">
                                </div>
                        </div>
                        <div class="modal-footer footer-alert">
                            <button type="button" class="btn-modal-cancel" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn-modal-delete">Save</button>
                        </div>
                    </form>
                </div>
            </div>
            <!--end model add user-->
            <div class = "table-account">

                <!-- Page Heading -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Quản lý tài khoản</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Username</th>
                                    <th>Password</th>
                                    <th>Created At</th>
                                    <th>Updated At</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items = "${lAdmin}" var = "admin"  varStatus="loop">
                                    <tr>
                                        <td class = "txt-username">${admin.username}</td>
                                        <td>${admin.password}</td>
                                        <td>${admin.created_at}</td>
                                        <td>${admin.updated_at}</td>
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
                                                    <form action="/qanyn/admin/account-update" method="post" class="modal-content">
                                                        <div class="modal-header header-alert">
                                                            <h5 class="modal-title">Update account [<c:out value = "${admin.username}"/>]</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body body-alert">
                                                            <input type="hidden" class = "txt-input" name = "id" value = "${admin.id}"/>
                                                                <div class = "div-input-form">
                                                                    <label class = "lb-title">Username:</label>
                                                                    <input class = "txt-content" name = "username" value = "${admin.username}" placeholder="username">
                                                                </div>
                                                                <div class = "div-input-form">
                                                                    <label class = "lb-title">Password:</label>
                                                                    <input class = "txt-content" name = "password" value="${admin.password}" placeholder="password">
                                                                </div>
                                                                <div class = "div-input-form">
                                                                    <label class = "lb-title">Confirm password:</label>
                                                                    <input class = "txt-content" name = "matchingPassword" value = "${admin.matchingPassword}" placeholder="password">
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
                                                <form action="/qanyn/admin/account-delete" method="post" class="modal-dialog content-alert">
                                                    <div class="modal-content">
                                                        <div class="modal-header header-alert">
                                                            <h5 class="modal-title" id="deleteUserTitle">Delete User</h5>
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
    </div>

</body>

</html>