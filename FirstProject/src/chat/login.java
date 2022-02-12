package chat;


import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class login extends JFrame {
	
	private JPanel contentPane;
	private JPasswordField passwordField;
	private JTextField txtId;
	
	static Connection con1 = null;

	
	/**
	 * Launch the application.
	 * @throws ClassNotFoundException 
	 * @throws SQLException 
	 */
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					login frame = new login();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
		
		Class.forName("oracle.jdbc.OracleDriver");
		con1 = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","hr","hr");
		
	}

	/**
	 * Create the frame.
	 */
	public login() {
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 726, 474);
		contentPane = new JPanel();
		contentPane.setBackground(Color.WHITE);
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblid = new JLabel("ID : ");
		lblid.setFont(new Font("���� ���", Font.PLAIN, 25));
		lblid.setBounds(97, 171, 69, 43);
		contentPane.add(lblid);
		
		JLabel lblpw = new JLabel("PW : ");
		lblpw.setFont(new Font("���� ���", Font.PLAIN, 25));
		lblpw.setBounds(97, 247, 69, 43);
		contentPane.add(lblpw);
		
		txtId = new JTextField();
		txtId.setFont(new Font("���� ���", Font.PLAIN, 18));
		txtId.setBounds(179, 171, 279, 43);
		contentPane.add(txtId);
		txtId.setColumns(10);
		
		passwordField = new JPasswordField();
		passwordField.setFont(new Font("���� ���", Font.PLAIN, 18));
		passwordField.setBounds(179, 247, 279, 43);
		contentPane.add(passwordField);
		
		JButton btnlogin = new JButton("\uB85C\uADF8\uC778");
		btnlogin.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
			}
		});
		btnlogin.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent arg0) {
				
				//���� txtid�� �Է��� ���� DB�� �����ϰ� pw�� DB�� �����ϴ� pw�� ��ġ�ϸ� ������ ����
				String psword = null;
				String sqlLog = "select chat_id ���̵�, pw ��� from chatting where chat_id = ?";
				try {
					
					PreparedStatement pst2 = con1.prepareStatement(sqlLog);
					pst2.setString(1, txtId.getText());
					
					ResultSet rs2 = pst2.executeQuery();
					
					while(rs2.next()) {//data�� ������
						String cid = rs2.getString("���̵�");
						psword = rs2.getString("���");
					}
					
					if(psword.equals(passwordField.getText())){
						JOptionPane.showMessageDialog(null, "�ϼ���������");
						
					}
					con1.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					//e1.printStackTrace();
					JOptionPane.showMessageDialog(null, "���̵� ��й�ȣ�� ��ġ���� �ʽ��ϴ�");
				}
				
				
			}
		});
		btnlogin.setFont(new Font("���� ���", Font.BOLD, 20));
		btnlogin.setBounds(501, 171, 129, 68);
		contentPane.add(btnlogin);
		
		JButton btnjoin = new JButton("\uD68C\uC6D0\uAC00\uC785");
		btnjoin.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				dispose(); //����â ����//�������� �ݴ� ��
	             setVisible(true);//����â �Ⱥ��̰�(false) // ���̰� ����(true)
	             new join().setVisible(true);////////AA.java ,   BB.java 
	//��ü.�޼ҵ�() 
			}
		});
		btnjoin.setFont(new Font("���� ���", Font.BOLD, 20));
		btnjoin.setBounds(501, 258, 129, 32);
		contentPane.add(btnjoin);
		
		JLabel lblKg = new JLabel("KG\uD1A1");
		lblKg.setForeground(Color.BLUE);
		lblKg.setFont(new Font("���� ���", Font.BOLD, 30));
		lblKg.setBounds(318, 81, 103, 43);
		contentPane.add(lblKg);
		
	
	}
}
