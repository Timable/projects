import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

class Info{
	
	String id = "";
	int ps;
	String name = "";
	String number = "";
	String mail = "";
	String gen = "";
	String birth = "";
	
	
}


public class ChatDb {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {

		Connection con1 = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		con1 = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "hr", "hr");
		
		System.out.println("立加");

		
		String info = "insert into chat values(?,?,?,?,?,?,?)";
		
		PreparedStatement pst1 = con1.prepareStatement(info);
//		pst1.setString
		
		
		
		pst1.executeUpdate();
		
		con1.close();
		System.out.println("立加 场");
		
		
	}

}
