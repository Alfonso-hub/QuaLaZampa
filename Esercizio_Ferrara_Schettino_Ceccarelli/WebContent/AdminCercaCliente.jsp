<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*, pacchetto.model.ClienteBean"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "../fragments/headerAmministratore.jsp" %>
<%ArrayList<?> utente = (ArrayList<?>) request.getAttribute("nome");
%>
<h1>E' stato trovato il cliete:</h1>
<%
if (utente != null && utente.size() != 0) {
	Iterator<?> it= utente.iterator();
	while (it.hasNext()) {
		ClienteBean ben= (ClienteBean) it.next();
%>
<p>
<b> <%= ben.getUsername() %> </b></p>

<%}
	}%>


</body>
</html>