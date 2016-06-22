<%--
  Created by IntelliJ IDEA.
  User: shrikant
  Date: 22/6/16
  Time: 9:43 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:stylesheet href="bootstrap.css"/>
    <asset:stylesheet href="font-awesome.min.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="jquery.min.js"/>
    <title>Register</title>
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
        <div class="page-header"><h1> Register Form </h1></div>

        <g:form method="post" class="form-horizontal" controller="register" action="save">

            <div class="form-group ${hasErrors(bean:myUser,field:'firstName','has-errors')}">
                <label class="control-label col-md-2" for="firstname">Firstname </label>
                <div class="col-md-8">
                    <input class="form-control" value="${myUser.firstName}" type="text" name="firstName" id="firstName"
                           placeholder="Enter First name">
                    <g:renderErrors bean="${myUser}" field="firstName" />
                </div>
            </div>
            <div class="form-group ${hasErrors(bean:myUser,field:'lastName','has-errors')}">
                <label class="control-label col-md-2" for="lastname">Lastname </label>
                <div class="col-md-8"><input class="form-control" type="text" value="${myUser.lastName}" name="lastName"
                                             id="lastName"
                                             placeholder="Enter Last name"></div>
                <g:renderErrors bean="${myUser}" field="lastName" />
            </div>
            <div class="form-group ${hasErrors(bean:myUser,field:'email','has-errors')}">
                <label class="control-label col-md-2" for="email">Email </label>
                <div class="col-md-8"><input class="form-control" type="text" name="email" id="email"
                                             value="${myUser.email}" placeholder="Enter email id"></div>
                <g:renderErrors bean="${myUser}" field="email" />
            </div>
            <div class="form-group">
                <label class="control-label col-md-2" for="password">Password </label>
                <div class="col-md-8">
                    <input class="form-control" type="password" value="${myUser.password}" name="password" id="password"
                           placeholder="Enter password">
                </div>
            </div>
            <div class="form-group">
                <button class="btn btn-primary col-md-offset-2" type="submit">SUBMIT</button>
            </div>
        </g:form>
</div>
</body>
</html>