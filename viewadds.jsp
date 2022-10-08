
<%@ page import="java.sql.*,java.io.*,DBcon.DConnection"  %>
<%! Connection con =null;
PreparedStatement pst=null;
%>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<%
try
{
con=DConnection.connect();
Statement st=con.createStatement();
String qry="select * from ADDS";
ResultSet rs=st.executeQuery(qry);


%>

<body>

  <div align="center">
  <table width="85%" height="661" border="0" body bgcolor="#000000">
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
      <td height="487" colspan="2"><div align="center"> 
            <table width="100%" height="481" border="0">
              <tr> 
                <td width="25%" height="475"><img src="images/images.jpg" width="269" height="463"></td>
                <td width="75%"><div align="center"> 
                    
                  <table width="100%" height="75" border="0"  colspan="9">
                    <tr> 
                      <td width="7%" height="31"><font color="#FFCC33">SNO</font></td>
                      <td width="13%"><font color="#FFCC33">ADDNAME</font></td>
                      <td width="12%"><font color="#FFCC33">DESCRIPTION</font></td>
                      <td width="9%"><font color="#FFCC33">OWNERNAME</font></td>
                      <td width="13%"><font color="#FFCC33">IMAGE</font></td>
                      <td width="12%"><font color="#FFCC33">DELETE</font></td>
                    </tr>
                    <%while(rs.next())
					{
					out.println("1");
					String sno1=rs.getString(1);
					  %>
                    <tr> 
                      <td height="38"><font color="#FF6600"><%=sno1%></font>&nbsp;</td>
                      <td><font color="#FF6600"><%=rs.getString(2)%></font>&nbsp;</td>
                      <td><font color="#FF6600"><%=rs.getString(3)%></font>&nbsp;</td>
                      <td><font color="#FF6600"><%=rs.getString(4)%></font>&nbsp;</td>
                      <td><font color="#FF6600"><%=rs.getString(5)%></font>&nbsp;</td>
                      <td><font color="#FF6600"><a href='deleteadd.jsp?name=<%=sno1%>'><font color="#FF6600">click Here</font></a></font></td>&nbsp;</td>
                    </tr>
                    <%}
					  }
					  catch(Exception e)
					  {
					  e.printStackTrace();
					  }%>
                  </table>
                    </div></td>
              </tr>
            </table>
          </div></td>
    </tr>
  </table>
</div>
<div align="center"></div>
<div align="center"></div>


</body>
</html>
