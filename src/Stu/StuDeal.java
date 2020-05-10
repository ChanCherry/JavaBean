package Stu;
import java.sql.*;

public class StuDeal {
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;

	
	public ResultSet executeQuery(String sql) {
		try {
			//装载JDBC驱动程序 
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			//设置数据库连接字符串 
			con = java.sql.DriverManager.getConnection("jdbc:sqlserver://127.0.0.1;databaseName=User","cxm","cxm");
			stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs = stmt.executeQuery(sql);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}

	public void close() {
		try {
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
