package gogoDBConn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GogoDBConn {
	public Connection con;//접속객체 con선언
	
	public Connection getConnection() {
		return con;//접속객체 con 반환
	}
	
	public GogoDBConn() throws ClassNotFoundException, SQLException{
		Class.forName("oracle.jdbc.driver.OracleDriver");//오라클 드라이버 로딩
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");//DB 접속
		
	}
}
