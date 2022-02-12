package chat;

import java.awt.EventQueue;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JRadioButton;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class join extends JFrame {

	private JPanel contentPane;
	private JTextField txtjid;
	private JTextField txtjname;
	private JTextField txtjnum;
	private JTextField txtjmail;
	private JPasswordField passwordField;
	private final ButtonGroup buttonGroup = new ButtonGroup();
	private JTextField txtbirth;
	
	
	
	static Connection con1 = null;
	private JTextField txtnickname;
	
	
	/**
	 * Launch the application.
	 * @throws ClassNotFoundException 
	 * @throws SQLException 
	 */
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					join frame = new join();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
		
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con1 = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","hr","hr");

		
		
	}

	/**
	 * Create the frame.
	 */
	public join() {
		
		
		 
		 setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 598, 497);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("\uD68C\uC6D0\uAC00\uC785");
		lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel.setBounds(172, 12, 226, 45);
		contentPane.add(lblNewLabel);
		
		JLabel lbljid = new JLabel("ID");
		lbljid.setBounds(14, 78, 88, 33);
		contentPane.add(lbljid);
		
		JLabel lbljpw = new JLabel("Password");
		lbljpw.setBounds(14, 123, 88, 33);
		contentPane.add(lbljpw);
		
		JLabel lbljname = new JLabel("\uC774\uB984");
		lbljname.setBounds(14, 162, 88, 33);
		contentPane.add(lbljname);
		
		JLabel lbljnumber = new JLabel("\uC5F0\uB77D\uCC98");
		lbljnumber.setBounds(14, 250, 88, 33);
		contentPane.add(lbljnumber);
		
		JLabel lbljbirth = new JLabel("\uC0DD\uB144\uC6D4\uC77C");
		lbljbirth.setBounds(14, 289, 88, 33);
		contentPane.add(lbljbirth);
		
		JLabel lbljmail = new JLabel("\uC774\uBA54\uC77C");
		lbljmail.setBounds(14, 326, 88, 33);
		contentPane.add(lbljmail);
		
		JLabel lbljgen = new JLabel("\uC131\uBCC4");
		lbljgen.setBounds(14, 361, 88, 33);
		contentPane.add(lbljgen);
		
		
		
		JRadioButton boxm = new JRadioButton("\uB0A8");
		boxm.setBounds(94, 367, 139, 27);
		contentPane.add(boxm);
		
		JRadioButton boxf = new JRadioButton("\uC5EC");
		boxf.setBounds(239, 367, 139, 27);
		contentPane.add(boxf);
		
		buttonGroup.add(boxm);
		buttonGroup.add(boxf);
		
		
		txtjid = new JTextField();
		txtjid.setBounds(94, 82, 355, 27);
		contentPane.add(txtjid);
		txtjid.setColumns(10);
		
		txtjname = new JTextField();
		txtjname.setColumns(10);
		txtjname.setBounds(95, 168, 355, 27);
		contentPane.add(txtjname);
		
		txtjnum = new JTextField();
		txtjnum.setColumns(10);
		txtjnum.setBounds(94, 253, 355, 27);
		contentPane.add(txtjnum);
		
		txtjmail = new JTextField();
		txtjmail.setColumns(10);
		txtjmail.setBounds(94, 329, 355, 27);
		contentPane.add(txtjmail);
		

		passwordField = new JPasswordField();
		passwordField.setBounds(94, 127, 355, 29);
		contentPane.add(passwordField);
		
		txtbirth = new JTextField();
		txtbirth.setBounds(94, 292, 355, 27);
		contentPane.add(txtbirth);
		txtbirth.setColumns(10);
		
		JButton btnNewButton = new JButton("ID\uC911\uBCF5\uD655\uC778");
		btnNewButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent arg0) {
			
				String sql1 = "select chat_id from chatting where chat_id = ?";
	            try {
	               PreparedStatement ps = con1.prepareStatement(sql1);
	               ps.setString(1, txtjid.getText());
	               ResultSet rs = ps.executeQuery();
	               if(rs.next()) {
	                  JOptionPane.showMessageDialog(null, "중복된 아이디입니다.");
	               }else{
	                  JOptionPane.showMessageDialog(null, "사용가능한 아이디입니다.");
	               }
	               
	            } catch (SQLException e) {
	               // TODO Auto-generated catch block
	               //e.printStackTrace();
	            }
			
			}
		});
		btnNewButton.setBounds(462, 81, 105, 27);
		contentPane.add(btnNewButton);
		
		JButton btnDone = new JButton("\uC644\uB8CC");
		btnDone.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
			}
		});
		btnDone.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				
				String sql = "insert into chatting values(?,?,?,?,?,?,?)";

				try {
					PreparedStatement pst1 = con1.prepareStatement(sql);
					String gen = null;
					
					String id = txtjid.getText();
					String pw = passwordField.getText();
					String name = txtjname.getText();
					String phone = txtjnum.getText();
					String birth = txtbirth.getText();
					String mail = txtjmail.getText();
					
					
					pst1.setString(1, id);
					pst1.setString(2, pw);
					pst1.setString(3, name);
					pst1.setString(4, phone);
					pst1.setString(5, birth);
					pst1.setString(6, mail);
	
					if(boxm.isSelected()) {
						gen = "남";
						JOptionPane.showMessageDialog(null, "회원가입이 완료됐습니다");
						dispose();
					}else if(boxf.isSelected()) {
						gen = "여";
						JOptionPane.showMessageDialog(null, "회원가입이 완료됐습니다");
						dispose();
					}else
						JOptionPane.showMessageDialog(null, "성별을 선택해주세요");
					pst1.setString(7, gen);
					
					
					
					pst1.executeUpdate();
					
					con1.close();
					
					
					
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					//e1.printStackTrace();
				} 
				
				
				
				
				
				
			}
		});
		btnDone.setBounds(117, 401, 105, 27);
		contentPane.add(btnDone);
		
		JButton btnCancel = new JButton("\uCDE8\uC18C");
		btnCancel.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				
				JOptionPane.showMessageDialog(btnCancel, "취소했습니다.");
				System.exit(1);
				
			}
		});
		btnCancel.setBounds(345, 401, 105, 27);
		contentPane.add(btnCancel);
		
		JLabel lblnick = new JLabel("\uB2C9\uB124\uC784");
		lblnick.setBounds(14, 205, 88, 33);
		contentPane.add(lblnick);
		
		txtnickname = new JTextField();
		txtnickname.setColumns(10);
		txtnickname.setBounds(94, 208, 355, 27);
		contentPane.add(txtnickname);
		
		
	}
}
