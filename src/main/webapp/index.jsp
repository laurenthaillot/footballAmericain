<html>

<body>

<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>


<% 
    Date date = new Date();
    SimpleDateFormat dateFormatComp;
 
    dateFormatComp = new SimpleDateFormat("EEE dd MMM yyyy hh:mm:ss a");
   	out.println(dateFormatComp.format(date));
%>


<h1>LE FOOTBALL AMERICAIN</h1>

<p> Hello je suis ${prenom}</p>

<p> Quelle est l'équipe qui se trouve à San Francisco ?</p>

${nom}



</body>
</html>
