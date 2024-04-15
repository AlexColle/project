<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>pgsArchivioAulaElimina</title>
</head>
<body>
	<jsp:useBean id="beanAula" scope="session"
		class="model.session.Aula">
		<jsp:setProperty name="beanAula" property="*" />
	</jsp:useBean>


	<FORM method="post" action="/WebProjectMavenized/CtrlArchivioAula">
		<TABLE>
			<tr>
				<td>Vuoi eliminare l Aula?</td>

				<td><INPUT type="submit" name="cmdAzione" value="Conferma">
				</td>

				<td><INPUT type="submit" name="cmdAzione" value="Annulla">
				</td>
			</tr>
		</TABLE>
	</FORM>
</body>
</html>