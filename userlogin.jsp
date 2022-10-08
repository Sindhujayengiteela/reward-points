<%@ page import="java.sql.*,DBcon.DConnection" %>

<%
try
{
Connection con=DConnection.connect();
String name1=request.getParameter("name");
String pass=request.getParameter("password");
application.setAttribute("name1",name1);
Statement st=con.createStatement();
String qry="select USERNAME,PASSWORD from customer_registration where USERNAME='"+name1+"' and PASSWORD='"+pass+"'";
ResultSet rs=st.executeQuery(qry);
if(rs.next())
{
out.println("ur loged in");
%>
<jsp:forward page="monthpoints.jsp"/>
<%
}

else
{

%>
<jsp:forward page="notuserlogin.html"/>
<%
}
}
catch(Exception e)
{
e.printStackTrace();

}



%>
