<%@ page import="java.sql.*,DBcon.DConnection" %>

<%
try
{
Connection con=DConnection.connect();
String opass=request.getParameter("opass");
String npass=request.getParameter("npass");
String cpass=request.getParameter("cpass");
out.println(opass);
out.println(npass);
out.println(cpass);
Statement st=con.createStatement();
String qry="select PASSWORD from customer_registration where PASSWORD='"+opass+"'";
ResultSet rs=st.executeQuery(qry);
out.println("1");
if(rs.next())
{
out.println("2");
Statement st1=con.createStatement();
String qry1="update customer_registration set PASSWORD='"+cpass+"' where PASSWORD='"+opass+"'";
int rs1=st1.executeUpdate(qry1);
out.println("3");
%>
<jsp:forward page="success2.html"/>
<%
}
else
{
out.println("cccc");
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
