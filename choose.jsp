<%@ page import="java.sql.*,java.io.*,DBcon.DConnection"  %>
<%! Connection con =null;
String name1,qr1;
Statement st;
ResultSet rs;
%>
<%
try
{
 name1=request.getParameter("name");
application.setAttribute("name1",name1);
out.println(name1);
con=DConnection.connect();
 st=con.createStatement();
 qr1="select points from points where id='"+name1+"'";
 System.out.println(qr1);
rs=st.executeQuery(qr1);


if(rs.next())
{
int pts=rs.getInt(1);
System.out.println(pts);
 if(pts>=12)
 {
 %>
 <jsp:forward page="choosegift.jsp" />
 <%
 }
 else
 {
  %>
  <jsp:forward page="notchoose.html" />
  <%
  }
  }
  }
  catch(Exception e)
  {
   e.printStackTrace();
  }
  %> 