<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <asset:stylesheet href="bootstrap.css"/>
    <asset:stylesheet href="font-awesome.min.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="jquery.min.js"/>
    <title>LOGIN</title>
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
                <li class="ls ${params.action == 'index' ? 'active' : ''}">
                    <g:link controller="register" action="index"><b>REGISTER</b></g:link>
                </li>
                <li class="ls ${params.action == 'enter' ? 'active' : ''}">
                    <g:link controller="login" action="enter"><b>LOGIN</b></g:link>
                </li>
            </ul>
        </div>
    </div>
</nav>

<g:if test="${flash.message}">
    <div class="alert alert-error panel-body" style="display: block;text-align: center;"><h3>${flash.message}</h3></div>
</g:if>

<div class="container">
    <div class="page-header"><h1>LOGIN</h1></div>

    <g:form method="post" class="form-horizontal" controller="login" action="save">

        <div class="form-group">
            <label class="control-label col-md-2" for="email">Email</label>
            <div class="col-md-8">
                <input class="form-control" type="email" name="email" id="email" placeholder="Enter email id">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="password">Password</label>
            <div class="col-md-8">
                <input class="form-control" type="password" name="password" id="password" placeholder="Enter password">
            </div>
        </div>

        <div class="form-group">
            <button class="btn btn-primary col-md-offset-2" type="submit">LOGIN</button>
        </div>

    </g:form>
</div>
</body>
</html>