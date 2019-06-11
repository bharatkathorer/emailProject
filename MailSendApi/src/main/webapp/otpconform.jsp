<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
<c:set var="ot" value="${f:replace(otp,'-','')}"></c:set>
<%-- ${ot}${param.newo} --%>
<c:choose>
<c:when test="${ot==param.newo}">
Valid
</c:when>
<c:otherwise>
Invalid
</c:otherwise>
</c:choose>
</body>
</html>