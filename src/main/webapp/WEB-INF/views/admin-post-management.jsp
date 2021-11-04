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
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</head>

<style>

    thead {
        background-color: #002366;
        color: white;
        font-weight: 400;
        align-items: center;
        text-align: center;
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
        border-radius: 5px;
        font-weight: 400;
        color: white;
        transition: 1s all;
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
    }

    .btn-denied {
        background-color: #FF2442;
    }

    .btn-published {
        background-color: #57CC99;

    }
</style>

<body>
<div class = "main_screen">
    <%@include file="common/nav-admin.jsp"%>
    <div class = "container">
        <div class = "content">
            <button  class = "btn-add-images"  data-bs-toggle="modal" data-bs-target="#addnewpost">Add new post</button>
            <form action="/qanyn/admin/post-search" method="post" class = "search-div">
                <div class="d-flex form-group">
                    <i class="fa fa-search icon-search"></i>
                    <input class="form-control search-input"  name = "search" placeholder="Search post by title" />
                </div>
            </form>
            <!-- Modal add new post-->
            <div class="modal fade" id="addnewpost" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog content-alert">
                    <form name = "formAddPost" onsubmit="validationAddPost()" action="/qanyn/admin/post-create" method="post" class="modal-content">
                        <div class="modal-header header-alert">Create new post
                        </div>
                        <div class="modal-body body-alert">
                            <div class = "body-create-post">
                                <div class = "div-input-form">
                                    <lable class = "lb-title">Title post:</lable>
                                    <input class = "txt-content" style="text-transform: uppercase;" name = "title"/>
                                </div>

                                <div class = "div-input-form ">
                                    <lable class = "lb-title">Content post:</lable>
                                    <textarea class = "txt-content" name = "content"></textarea>
                                </div>

                                <div class = "div-input-form">
                                    <lable class = "lb-title">Genre:</lable>
                                    <input class = "txt-content" name = "genre"/>
                                </div>
                                <div class = "div-input-form">
                                    <lable class = "lb-title">Rate:</lable>
                                    <input class = "txt-content" name = "rate"/>
                                </div>
<%--                                <div class = "div-input-form ">--%>
<%--                                    <lable class = "txt-header-create">Release Date</lable>--%>
<%--                                    <input class = "input-title" name = "release_date"/>--%>
<%--                                </div>--%>
                                <div class = "div-input-form">
                                    <lable class = "lb-title">Developer:</lable>
                                    <input class = "txt-content" name = "developer"/>
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
                        <h6 class="m-0 font-weight-bold text-primary">Quản lý bài post</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Title</th>
                                    <th>Content</th>
                                    <th>Created at</th>
                                    <th>Updated at</th>
                                    <th>Status</th>
                                    <c:if test = "${admin == 'admin'}">
                                        <th>Created by</th>
                                        <th>Action</th>
                                    </c:if>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${listPost}" var = "post" varStatus="loop">
                                    <tr>
                                        <td><a href="/qanyn/admin/post-create-detail/${post.id}" style="text-transform: uppercase; color: #39A2DB; font-weight: 500">${post.title}</a></td>
                                        <td>${post.content}</td>
                                        <td>${post.created_at}</td>
                                        <td>${post.updated_at}</td>
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
                                                   <div class = "btn-edit-admin">
                                                       <a  class = "btn-add-images" data-bs-toggle = "modal" data-bs-target = "#confirmpost${loop.index}">Confirm</a>
                                                       <a  class = "btn-modal-delete" data-bs-toggle = "modal" data-bs-target = "#denypost${loop.index}">Deny</a>
                                                   </div>
                                                </c:if>
                                            </div>
                                                <!-- Modal confirm-->
                                                <div class="modal fade" id="confirmpost${loop.index}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog content-alert">
                                                        <form action = "/qanyn/admin/post-confirm" method = "post" class="modal-content">
                                                            <div class="modal-header header-alert">
                                                               Confirm post!
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
                                                        <form action = "/qanyn/admin/post-deny" method = "post" class="modal-content">
                                                            <div class="modal-header header-alert">
                                                                Deny post!
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
    </div>

        <script>
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