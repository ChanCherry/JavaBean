package Stu;
import java.sql.*;

public class StuAdd {
	Connection con=null;
	Statement stmt=null;

	public Boolean executeUpdate(String sql){
		boolean x=false;
		try {
			//装载JDBC驱动程序 
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			//设置数据库连接字符串 
			con = java.sql.DriverManager.getConnection("jdbc:sqlserver://127.0.0.1;databaseName=User","cxm","cxm");
			stmt = con.createStatement();
			stmt.executeUpdate(sql);
			x=true;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return x;
	}


	public void close() {
		try {
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}