<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="model.session.Aula"%>
<HTML>
<HEAD>
<%@ page
language="java"
contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"
import="java.util.*"
%>
<META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META name="GENERATOR" content="IBM WebSphere Studio">
<TITLE>pgsArchivioAula.jsp</TITLE>
</HEAD>
<BODY>

<FORM method="post" action="/WebProjectMavenized/CtrlArchivioAula" name="ArchivioAula">
<P>&nbsp;&nbsp; <input type="submit" name="cmdAzione" value="Torna alla Home">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font size="+3">Archivio Aule </font>
</P>
<%
	List pgsElenco= (List) request.getAttribute("elencoAule");
   int numeroRighe = pgsElenco.size();
   if(numeroRighe > 0){
   		int i = 1;

%>
<TABLE border="1" >
<TBODY>
<TR>
<TD> </TD>
<TD>Nome</TD>
</TR>
	<TR>
	<TD>
	<input type="radio" name="rdoIDAula" value="<%=((Aula)pgsElenco.get(0)).getChiave() %>" checked="checked"> </TD>
	<TD> <%= ((Aula)pgsElenco.get(0)).getNome() %></TD>
	</TR>

<%while(i< numeroRighe){
	%>
	<TR>
	<TD>
	<input type="radio" name="rdoIDAula" value="<%= ((Aula)pgsElenco.get(i)).getChiave() %>" >
	</TD>
	<TD> <%= ((Aula)pgsElenco.get(i)).getNome() %></TD>
	</TR>
	<% i++;
	} %>
</TBODY>
</TABLE>
<P> </P>
<% } else{%> Non ci sono Aule<% } %> <BR>


<input type="submit" name="cmdAzione" value="Nuovo">
&nbsp;&nbsp;&nbsp;<input type="submit" name="cmdAzione" value="Modifica">
&nbsp;&nbsp;&nbsp;<input type="submit" name="cmdAzione" value="Elimina">

<br>
</Form>

</BODY>
</HTML>
