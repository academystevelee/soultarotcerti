<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>


 -->
 
 

<link rel="stylesheet" href="/resources/css/styles.css" media="screen and (min-width: 112px) and (max-width: 1130px)">
<link rel="stylesheet" href="/resources/csspc/styles.css" media="screen and (min-width: 1224px) ">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>



<title>SteveleeJava</title>
</head>



<body >
	<div class=”wrap”>
		<div id="header" >
			<tiles:insertAttribute name="header"/>
		</div>
	
		<div id="content" >
			<tiles:insertAttribute name="content"/>
		</div>
	 
		<div id="footer" class="footer">
			<tiles:insertAttribute name="footer"/>
		</div>
	
	</div>
</body>
</html>