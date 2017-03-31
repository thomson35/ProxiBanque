<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="<c:url value="/resources/js/jquery-3.2.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
<link href="<c:url value="/resources/css/MonStyleSheet.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css">

</head>
<body>
<%@include file="/resources/template/Conseiller/headerConseiller.jsp"%>
	<h2>Formulaire ajouter compte courant</h2>
	<form:form method="POST"
		action="${pageContext.request.contextPath}/compte/soumettreCompteCourant"
		commandName="command">
		<table>
			<tr>
				<td>${command.id}</td>
				<td><form:input path="id" type="hidden" /></td>
			</tr>
			<tr>
				<td><form:label path="numero">numero:</form:label></td>
				<td><form:input path="numero" /></td>
				<td><form:errors path="numero" cssStyle="color:red" /></td>
			</tr>
			<tr>
				<td><form:label path="decouvert">decouvert:</form:label></td>
				<td><form:input path="decouvert" /></td>
				<td><form:errors path="decouvert" cssStyle="color:red" /></td>
			</tr>

			<tr>
				<td><form:label path="solde">solde:</form:label></td>
				<td><form:input path="solde" /></td>
				<td><form:errors path="solde" cssStyle="color:red" /></td>
			</tr>
			<tr>
				<td><form:label path="client">client:</form:label></td>
				<form:select path="client.id" id="client">
					<c:forEach var="c" items="${clientListe}">
					<form:option value="${c.id}">${c.nom}</form:option>
					</c:forEach>
				</form:select>
				<td><form:errors path="client" cssStyle="color:red" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="soummettre" /></td>
			</tr>
		</table>
	</form:form>

</body>
</html>