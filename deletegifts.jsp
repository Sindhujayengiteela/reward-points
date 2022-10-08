<%@ page import="java.sql.*,java.io.*,DBcon.DConnection"  %>
<%! Connection con =null;

%>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<%
try
{
con=DConnection.connect();
Statement st=con.createStatement();
String sno=request.getParameter("name");
out.println(sno);
String qry="delete from gifts where SNO='"+sno+"'";
int rs=st.executeUpdate(qry);
if(rs!=0)
{
 %>
<jsp:forward page="viewgifts.jsp"/>
<%
}
else
{

%>
<jsp:forward page="deletegifts.jsp"/>
<%}
}
catch(Exception e)
{
e.printStackTrace();
}
%>