<%@ page import ="java.sql.Connection"%>
<%@ page import ="java.sql.DriverManager"%>
<%@ page import ="java.sql.ResultSet"%>
<%@ page import ="java.sql.Statement"%>

<%@ page import ="oracle.jdbc.OracleDriver"%>

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

<p> Quel est l'équipe qui se trouve a San Francisco ?</p>



<%
    String databaseUrl = "jdbc:oracle:thin:simplon/simplon@localhost:1521:XE";

    String requeteSql = "SELECT NAME FROM TEAMS where CITY = 'San Francisco'";

    DriverManager.registerDriver(new OracleDriver());

    Connection connexion = DriverManager.getConnection(databaseUrl);
    Statement requete = connexion.createStatement();
    ResultSet resultat = requete.executeQuery(requeteSql);

    while (resultat.next()) {
        String nom = resultat.getString("NAME");
        out.println(nom);

    }

    resultat.close();
    requete.close();
    connexion.close();


%> 

${nom}



</body>
</html>
