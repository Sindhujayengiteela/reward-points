<%@ page import="java.sql.*,DBcon.DConnection" %>

<%
try
{
Connection con=DConnection.connect();
String name=request.getParameter("name");
String pass=request.getParameter("password");
application.setAttribute("name",name);


Statement st=con.createStatement();
String qry="select USERNAME,PASSWORD from customer_registration where USERNAME='"+name+"' and PASSWORD='"+pass+"'";
ResultSet rs=st.executeQuery(qry);
if(rs.next())
{
out.println("ur loged in");
%>
<jsp:forward page="customerlogin.jsp"/>
<%
}

else
{

%>
<jsp:forward page="notlogin.html"/>
<%
}
}
catch(Exception e)
{
e.printStackTrace();

}



%>
