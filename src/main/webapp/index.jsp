


<html>

<body>

<%@	page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>


<h1>Mon application Web en Java</h1>

Ceci est une page statique.
Maintenant je souhaiterai faire une page dynamique...
<p> mais COMMENT ON FAIT ?</p>

<%

 
    Date date = new Date();
    SimpleDateFormat dateFormatComp;
 
    dateFormatComp = new SimpleDateFormat("EEE dd MMM yyyy hh:mm:ss a");
   	out.println(dateFormatComp.format(date));


%>


<p> Hello je suis ${prenom}</p>


</body>
</html>
