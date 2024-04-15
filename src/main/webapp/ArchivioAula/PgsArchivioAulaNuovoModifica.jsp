<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<%@ page
language="java"
contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"
%>
<META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META name="GENERATOR" content="IBM WebSphere Studio">
<TITLE>pgsArchivioAulaNuovoModifica.jsp</TITLE>
</HEAD>
<BODY>

<jsp:useBean id="beanAula" scope="session"
	class="model.session.Aula">
	<jsp:setProperty name="beanAula" property="*" />
</jsp:useBean>

<P align="center"><FONT size="+2" color="green">Aula</FONT></P>


<FORM method="post" action="/WebProjectMavenized/CtrlArchivioAula">


<TABLE  align="center" >




<tr>

	<td>
		Nome:
	</td>

	<td>

	<INPUT type="text" name="txtNome" value="<%= beanAula.getNome()%>" size="20" maxlength="50">

	</td>

</tr>
</TABLE >
<BR/>
<BR/>
<DIV align="center">

<INPUT type="submit" name="cmdAzione" value="Registra"> &nbsp;&nbsp;
<INPUT type="submit" name="cmdAzione" value="Annulla"> <BR>

</DIV></FORM>



</BODY>
</HTML>
