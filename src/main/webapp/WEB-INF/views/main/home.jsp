<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
	<style>
        .main-body{
            /* background-color: rgb(60,60,60); */
            width: 100%;
            height:  500px;
        }
    </style>
</head>
<body>
	<div class="main-body">
		${user}
    </div>
</body>
</html>
