<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>pgsArchivioDiscenteElimina</title>
</head>
<body>
	<jsp:useBean id="beanDiscente" scope="session"
		class="model.session.Discente">
		<jsp:setProperty name="beanDiscente" property="*" />
	</jsp:useBean>


	<FORM method="post" action="/WebProjectMavenized/CtrlArchivioDiscente">
		<TABLE>
			<tr>
				<td>Vuoi eliminare il Discente?</td>

				<td><INPUT type="submit" name="cmdAzione" value="Conferma">
				</td>

				<td><INPUT type="submit" name="cmdAzione" value="Annulla">
				</td>
			</tr>
		</TABLE>
	</FORM>
</body>
</html>