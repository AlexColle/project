<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>pgsArchivioDocenteElimina</title>
</head>
<body>
	<jsp:useBean id="beanDocente" scope="session"
		class="model.session.Docente">
		<jsp:setProperty name="beanDocente" property="*" />
	</jsp:useBean>


	<FORM method="post" action="/WebProjectMavenized/CtrlArchivioDocente">
		<TABLE>
			<tr>
				<td>Vuoi eliminare il Docente?</td>

				<td><INPUT type="submit" name="cmdAzione" value="Conferma">
				</td>
				
				<td><INPUT type="submit" name="cmdAzione" value="Annulla">
				</td>
			</tr>
		</TABLE>
	</FORM>
</body>
</html>