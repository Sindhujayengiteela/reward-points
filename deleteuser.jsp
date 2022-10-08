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
String name=request.getParameter("name");
String qry="delete from CUSTOMER_REGISTRATION where USERNAME='"+name+"'";
int rs=st.executeUpdate(qry);
if(rs!=0)
{
 %>
<jsp:forward page="viewusers.jsp"/>
<%
}
else
{

%>
<jsp:forward page="deleteuser.jsp"/>
<%}
}
catch(Exception e)
{
e.printStackTrace();
}
%>