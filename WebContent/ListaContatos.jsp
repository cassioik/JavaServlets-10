<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<table>
		<jsp:useBean id="dao" class="up.jservlets.dao.PessoaDAO" />
		<%
			dao.setPath("C:\\Temp");
		%>
		<c:forEach var="pessoa" items="${dao.lista}">
			<tr>
				<td>${pessoa.nome}</td>
				<td><c:if test="${not empty pessoa.email}">
						<a href="mailto:${pessoa.email}">${pessoa.email}</a>
					</c:if></td>
				<td>${pessoa.endereco}</td>
				<td>${pessoa.dataNascimento}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>