<%@ page import="java.sql.*,java.io.*,DBcon.DConnection"  %>
<%! Connection con =null;
String name,sno,qr,qr1,qr2,qr3,qry;
Statement st,st1,st2,st3,st5;
int rs2,rs3,points,point;
ResultSet rs,rs1,rs4;
%>
<%
try
{
 name=request.getParameter("name");
con=DConnection.connect();
 st=con.createStatement();
 sno=request.getParameter("sno");
 st5=con.createStatement();
 qry="select DESCRIPTION,IMAGE from ADDS where SNO='"+sno+"'";
rs4=st5.executeQuery(qry);



qr1="select id from points where id='"+name+"'";
rs=st.executeQuery(qr1);
if(rs.next())
{
st1=con.createStatement();
 qr2="select max(points) from points where id='"+name+"'";
rs1=st1.executeQuery(qr2);
while(rs1.next())
{
points=rs1.getInt(1);
point=points+1;
st2=con.createStatement();
qr3="update points set points='"+point+"' where id='"+name+"'";
rs2=st2.executeUpdate(qr3);
}
}
else
{
qr="insert into points values('"+name+"',1)"; 
st3=con.createStatement();
rs3=st3.executeUpdate(qr);
}

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
</head>

<body>
<form action="" name="" >
  <div align="center">
  <table width="85%" height="663" border="0" body bgcolor="#000000">
    <tr> 
      <td width="17%" height="78"><div align="center"><img src="images/lin.jpg" width="137" height="108"> 
        </div></td>
      <td width="83%"><img src="images/cooltext425559171.jpg" width="750" height="102"></td>
    </tr>
    <tr> 
      <td height="56" colspan="2"><table width="100%" height="44" border="0">
            <tr> 
              <td width="15%" height="40">
                  <div align="center"><font color="#FF6600"><a href="index.html"><font color="#FF6600"><img src="images/temp165016824over.png"></font></a></font></div>
                 </td>
              <td width="17%"><div align="center"><font color="#FF0000"><a href="admin.html"><font color="#FF6600"><img src="images/temp186624075over.png"></font></a></font></div></td>
              <td width="19%"><div align="center"><font color="#FF6600"><a href="customer.html"><font color="#FF6600"><img src="images/temp18665486over.png"></font></a></font></div></td>
              <td width="17%"><div align="center"><font color="#FF6600"><a href="reports.html"><font color="#FF6600"><img src="images/temp16505674over.png"></font></a></font></div></td>
              <td width="15%"><div align="center"><font color="#FF6600"><a href="site.html"><font color="#FF6600"><img src="images/temp186726256over.png"></font></a></font></div></td>
              <td width="17%"><div align="center"><font color="#3300FF"><a href="success4.html"><font color="#FF6600"><img src="images/temp186715720over.png" border="0"></font></a></font></div></td>
            </tr>
          </table></td>
    </tr>
    <tr> 
      <td height="489" colspan="2"><div align="center">
          <table width="100%" height="481" border="0">
            <tr> 
              <td width="25%" height="463"><img src="images/images.jpg" width="309" height="463"></td>
              <%while(rs4.next())
					  {%>
			  <td width="75%"><div align="center"><table width="100%">
			  <tr>
			  <td width="25%"><div align="center"></div>
                          <div align="center"></div>
                          <image src="<%=rs4.getString(2)%>"></td>
               </tr>
			   <tr><td width="50%"><font color="#FF6600"><%=rs4.getString(1)%></font></td>
			  </tr> 
			   </table>  
				  </div>
				  </td>
            </tr>
			<%}
			}
catch(Exception e)
{
 e.printStackTrace();
} 
			%>		 
          </table>
        </div></td>
    </tr>
  </table>
</div>
<div align="center"></div>
<div align="center"></div>
</form>
</body>
</html>
