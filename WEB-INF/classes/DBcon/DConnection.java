package DBcon;
import java.sql.*;
import java.io.*;
public class DConnection 
{
static Connection con=null;
public static Connection connect()
	{
	try
	{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:mydsn","rewards","rewards");
			System.out.println("connected");
			}				
			catch (Exception e)
			{
				e.printStackTrace();
			}
           return con;

	}
}
