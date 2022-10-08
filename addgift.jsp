<%@ page import="java.sql.*,java.io.*,DBcon.DConnection"  %>
<%! Connection con =null;
PreparedStatement pst=null;
%>
<%
try
{
con=DConnection.connect();
String sno =request.getParameter("S.NO");
String aname=request.getParameter("GIFTNAME");
String img=request.getParameter("IMAGE");
out.println(img);
pst=con.prepareStatement("insert into gifts values(?,?,?)");
pst.setString(1,sno);
pst.setString(2,aname);
pst.setString(3,img);
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

<jsp:include page="addgifts.jsp"/>
<%}
//rs.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>