<%@ page import="java.sql.*,java.io.*,DBcon.DConnection"  %>
<%! Connection con =null;
PreparedStatement pst=null;
%>
<%
try
{
con=DConnection.connect();
String sno =request.getParameter("S.NO");
String aname=request.getParameter("ADDNAME");
String des=request.getParameter("DESCRIPTION");
String oname =request.getParameter("OWNERNAME");
String img=request.getParameter("IMAGE");
out.println(img);
pst=con.prepareStatement("insert into adds values(?,?,?,?,?)");
pst.setString(1,sno);
pst.setString(2,aname);
pst.setString(3,des);
pst.setString(4,oname);
pst.setString(5,img);
int rs=pst.executeUpdate();
out.println("1");
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

<jsp:include page="admin.html"/>
<%}
//rs.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>