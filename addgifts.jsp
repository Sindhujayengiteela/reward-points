<%@ page import="java.sql.*,java.io.*,DBcon.DConnection"  %>
<%! Connection con =null;
int i=0;
%>
<%
try
{
  
   con=DConnection.connect();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(sno) from gifts ");
	if(rs.next())
	{
		i=rs.getInt(1);
		i++;
	}
}
catch(Exception e)
{
	  e.printStackTrace();
}	
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<form action="addgift.jsp"  name="" >
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
                <td width="75%"><div align="center"> 
                    <table width="83%" border="0">
                      
                      <tr> 
                        <td><font color="#FF9900" size="4">S.NO:</font></td>
                        <td><input type="text" name="S.NO" value="<%=i%>"></td>
                      </tr>
                      <tr> 
                        <td><font color="#FF9900" size="4">GIFTNAME:</font></td>
                        <td><input type="text" name="GIFTNAME"></td>
                      </tr>
                      
                      <tr> 
                        <td height="28"><font color="#FF9900" size="4">IMAGE:</font></td>
                        <td><input type="file" name="IMAGE"></td>
                      </tr>
                      <tr>
                        <td height="30">&nbsp;</td>
                        <td><input type="submit" name="Submit" value="Submit"></td>
                      </tr>
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
</form>
</body>
</html>
