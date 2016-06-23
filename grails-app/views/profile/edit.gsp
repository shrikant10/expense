<%--
  Created by IntelliJ IDEA.
  User: shrikant
  Date: 23/6/16
  Time: 12:47 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:stylesheet href="bootstrap.css"/>
    <asset:stylesheet href="font-awesome.min.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="jquery.min.js"/>
    <title>Edit form</title>
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
                <li class="ls active"><b>HI</b></li>
                <li class="ls">
                    <g:link controller="profile" action="edit" id="recentlySavedUser.id"><b>EDIT-PROFILE</b></g:link>
                </li>
                <li class="ls">
                    <g:link controller="logout" action="index"><b>LOGOUT</b></g:link>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">

    <div class="page-header"><h1>EDIT FORM</h1></div>
    <g:form method="post" class="form-horizontal" controller="profile" action="update">
        <input type="text" name="id" id="id" value="${edit1.id}">

        <div class="form-group">
            <label class="control-label col-md-2" for="firstName">Firstname</label>

            <div class="col-md-8">
                <input class="form-control" type="text" name="firstName" id="firstName" value="${edit1.firstName}">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="lastName">Lastname</label>

            <div class="col-md-8">
                <input class="form-control" type="text" name="lastName" id="lastName" value="${edit1.lastName}">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="email">Email</label>

            <div class="col-md-8">
                <input class="form-control" type="email" name="email" id="email" value="${edit1.email}">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="password">Password</label>

            <div class="col-md-8">
                <input class="form-control" type="password" name="password" id="password" value="${edit1.password}">
            </div>
        </div>

        <div class="form-group">
            <button class="btn btn-primary col-md-offset-2" type="submit">SUBMIT</button>
        </div>
    </g:form>

</div>
</body>
</html>