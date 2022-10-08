<%@ page import="java.sql.*,java.io.*,DBcon.DConnection"  %>
<%! Connection con =null;
PreparedStatement pst=null;
%>
<%
try
{
con=DConnection.connect();
String id =request.getParameter("id");
String fname=request.getParameter("firstname");
String lname=request.getParameter("lastname");
String address=request.getParameter("address");
String uname=request.getParameter("username");
String pass=request.getParameter("password");
String phno=request.getParameter("phno");
String email=request.getParameter("email");
pst=con.prepareStatement("insert into customer_registration values(?,?,?,?,?,?,?,?)");
pst.setString(1,id);
pst.setString(2,fname);
pst.setString(3,lname);
pst.setString(4,address);
pst.setString(5,uname);
pst.setString(6,pass);
pst.setString(7,phno);
pst.setString(8,email);
int rs=pst.executeUpdate();

if(rs!=0)
{
out.println("Information Saved");

%>
<jsp:forward page="success.html"/>
<%
}
else
{
out.println("Information not saved");
%>
<jsp:include page="adminadd.html"/>
<%}
//rs.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>