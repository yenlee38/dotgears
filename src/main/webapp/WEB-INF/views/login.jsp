
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="shortcut icon" href="https://res.cloudinary.com/yenltn/image/upload/v1636517772/treegames_yt3kx9.png" sizes="128x128" />
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="styles/login.css">
    <script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
    <title>Login</title>
</head>
<style>

    .login-form{
        background-color: #655351;
        display: flex;
        justify-content: center;
        flex-direction: column;
        align-items: center;
        border-radius: 8px;
        padding: 10px 30px;
        padding-right:40px;
        font-weight: 500;
        opacity: 0.8;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 5px 0 rgb(0 0 0 /20%);
    }

    .btn-login{
        background-color: #944930;
        padding: 10px;
        border-radius: 3px;
        border: none;
        outline: none;
        color: white;
        letter-spacing: 0.5px;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 /20%), 0 2px 5px 0 rgb(0 0 0 /20%);
    }

    .btn-login:hover {
        background-color: #211b19;
    }

    .screen-main{
        margin: 0;
        padding: 0;
        justify-content: center;
        display: flex;
        align-items: center;

    }
    .input-div{
        display: flex;
        justify-content: center;
        flex-direction: column;
        margin: 10px;


    }

    .input-tag{
        margin: 5px;
        padding: 5px;
        margin-left: 10px;
        outline: none;
        border: none;
        font-size: .75rem;
        letter-spacing: 0.5px;
    }

    .screen-main {
        height: 100%;
        width: 100%;
        background-image: url("/imgs/bglg.jpg");
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>
<body>
    <div class = "screen-main">
        <form action="/perform_login" method="post" class = "login-form">
            <div>
                <img width="180" height="80" src="https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png" alt=".GEARS Home"  hspace="0" vspace="0"/>
            </div>
            <label style="font-weight: bold; color: #E8A983">Login</label>
            <div class = "input-div">
                <div style="display:flex ;justify-content: flex-start; align-items: center; flex-direction: row">
                  <div>  <span class="iconify" style="color: white" data-icon="carbon:user-avatar-filled-alt"></span></div>
                    <input class="input-tag" id = "username" name = "username" placeholder="Enter your username">
                </div>
            </div>
            <div class = "input-div">
                <div style="display:flex ;justify-content: flex-start; align-items: center; flex-direction: row">
                <div style=""><span class="iconify" style="color: white" data-icon="simple-icons:1password"></span></div>
                <input class="input-tag" id = "password" name = "password" placeholder="Enter your password">
                </div>
            </div>
            <Button type = "submit" class = "btn-login">Login</Button>
        </form>
    </div>
</body>
</html>
