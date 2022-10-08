<%@ page import="java.sql.*,DBcon.DConnection" %>

<%
try
{

Connection con=DConnection.connect();
String name=request.getParameter("name");
String pass=request.getParameter("password");
Statement st=con.createStatement();
String qry="select * from admin_login where USERNAME='"+name+"' and PASSWORD='"+pass+"'";
ResultSet rs=st.executeQuery(qry);
if(rs.next())
{
out.println("ur loged in");
%>
<jsp:forward page="adminlogin.html"/>
<%
}
else
{

%>
<jsp:forward page="notadminlogin.html"/>
<%}
}
catch(Exception e)
{
e.printStackTrace();

}



%>
