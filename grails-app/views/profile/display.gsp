<%--
  Created by IntelliJ IDEA.
  User: shrikant
  Date: 23/6/16
  Time: 12:23 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:stylesheet href="bootstrap.css"/>
    <asset:stylesheet href="font-awesome.min.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="jquery.min.js"/>
    <title>Profile</title>
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
                <li class="ls active"><a href="#"><b>HI ${recentlySavedUser.firstName} ${recentlySavedUser.lastName}</b></a></li>
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

<g:if test="${flash.message}">
    <div class="alert alert-error panel-body" style="display: block;text-align: center;"><h3>${flash.message}</h3></div>
</g:if>

<div class="container">
    <div class="page-header"><h1>Profile</h1></div>
    <dl class="dl-horizontal">
        <dt>ID :</dt>
        <dd>${recentlySavedUser.id}</dd>
        <dt>Version :</dt>
        <dd>${recentlySavedUser.version}</dd>
        <dt>Firstname :</dt>
        <dd>${recentlySavedUser.firstName}</dd>
        <dt>Lastname :</dt>
        <dd>${recentlySavedUser.lastName}</dd>
        <dt>Email :</dt>
        <dd>${recentlySavedUser.email}</dd>
        <dt>Password:</dt>
        <dd>${recentlySavedUser.password}</dd>
    </dl>
</body>
</html>