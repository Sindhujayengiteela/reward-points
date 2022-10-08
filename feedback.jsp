<%@ page import="java.sql.*,java.io.*,DBcon.DConnection"  %>
<%! Connection con =null;
PreparedStatement pst=null;
%>
<%
try
{
con=DConnection.connect();
String id =request.getParameter("id");
String name=request.getParameter("name");
String feedback=request.getParameter("feedback");
pst=con.prepareStatement("insert into feedback values(?,?,?)");
pst.setString(1,id);
pst.setString(2,name);
pst.setString(3,feedback);
int rs=pst.executeUpdate();
if(rs!=0)
{
out.println("Information Saved");

%>
<jsp:forward page="success3.html"/>
<%
}
else
{
out.println("Information not saved");
%>

<jsp:include page="feedback.html"/>
<%}
//rs.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>