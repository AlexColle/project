<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="model.session.Discente"%>
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
<TITLE>pgsArchivioDiscente.jsp</TITLE>
</HEAD>
<BODY>

<FORM method="post" action="/WebProjectMavenized/CtrlArchivioDiscente" name="ArchivioDiscente">
<P>&nbsp;&nbsp; <input type="submit" name="cmdAzione" value="Torna alla Home">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font size="+3">Archivio Discenti </font>
</P>
<%
	List pgsElenco= (List) request.getAttribute("elencoDiscenti");
   int numeroRighe = pgsElenco.size();
   if(numeroRighe > 0){
   		int i = 1;

%>
<TABLE border="1" >
<TBODY>
<TR>
<TD> </TD>
<TD>Cognome</TD>
<TD>Nome</TD>
</TR>
	<TR>
	<TD>
	<input type="radio" name="rdoIDDiscente" value="<%=((Discente)pgsElenco.get(0)).getChiave() %>" checked="checked"> </TD>
	<TD> <%= ((Discente)pgsElenco.get(0)).getCognome() %></TD>
	<TD> <%= ((Discente)pgsElenco.get(0)).getNome() %></TD>
	</TR>

<%while(i< numeroRighe){
	%>
	<TR>
	<TD>
	<input type="radio" name="rdoIDDiscente" value="<%= ((Discente)pgsElenco.get(i)).getChiave() %>" >
	</TD>
	<TD> <%= ((Discente)pgsElenco.get(i)).getCognome() %></TD>
	<TD> <%= ((Discente)pgsElenco.get(i)).getNome() %></TD>
	</TR>
	<% i++;
	} %>
</TBODY>
</TABLE>
<P> </P>
<% } else{%> Non ci sono Discenti<% } %> <BR>


<input type="submit" name="cmdAzione" value="Nuovo">
&nbsp;&nbsp;&nbsp;<input type="submit" name="cmdAzione" value="Modifica">
&nbsp;&nbsp;&nbsp;<input type="submit" name="cmdAzione" value="Elimina">

<br>
</Form>

</BODY>
</HTML>
