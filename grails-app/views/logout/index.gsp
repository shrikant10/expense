<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:stylesheet href="bootstrap.css"/>
    <asset:stylesheet href="font-awesome.min.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="jquery.min.js"/>
    <title>Log-out</title>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#bs">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand ls" href="#"><b>FORM</b></a>
        </div>
        <div class="container collapse navbar-collapse" id="bs">
            <ul class="nav navbar-nav navbar-right">
                <li class="ls ${params.action=='index'?'active':''}">
                    <g:link controller="register" action="index"><b>REGISTER</b></g:link>
                </li>
                <li class="ls ${params.action=='enter'?'active':''}">
                    <g:link controller="login" action="enter"><b>LOGIN</b></g:link>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="page-header"><h1> Successfully Logged out </h1></div>
</div>
</body>
</html>