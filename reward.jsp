
<%@ page import="java.sql.*,java.io.*,DBcon.DConnection"  %>
<%! Connection con =null;
PreparedStatement pst=null;
%>
<%
try
{
con=DConnection.connect();
String sno =request.getParameter("sno");
String uname=request.getParameter("uname");
String gname=request.getParameter("gname");
pst=con.prepareStatement("insert into reward values(?,?,?,sysdate)");
pst.setString(1,sno);
pst.setString(2,uname);
pst.setString(3,gname);
int rs=pst.executeUpdate();
if(rs!=0)
{
out.println("Information Saved");
con=DConnection.connect();
Statement st1=con.createStatement();
String qry1="select max(points) from points where id='"+uname+"'";
System.out.println(qry1);
ResultSet rs1=st1.executeQuery(qry1);
if(rs1.next())
{
int pts=rs1.getInt(1);
int pts1=pts-12;
out.println(pts1);
Statement st2=con.createStatement();
String qr3="update points set points='"+pts1+"' where id='"+uname+"'";
int rs2=st2.executeUpdate(qr3);					
if(rs2!=0)
{
%>					
<jsp:forward page="monthpoints.jsp"/>
<%
}
}
}
else
{
out.println("Information not saved");
%>

<jsp:include page="choosegift.jsp"/>
<%}
//rs.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
