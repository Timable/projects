package _000_window_to_windo_move_THIS_3__Value_Object_;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.Color;
import java.awt.Font;
import javax.swing.JTextField;
import javax.swing.JLabel;

public class OneWindow extends JFrame {
      //  <새창띄우기> 
//미리 두개창 디자인하여  놓고  
//    new 클래스이름( ).setVisible(true); /////////////////
 //단, 2class방식일때는 new 메인아닌클래스이름()..setVisible(true); 
	private JPanel contentPane;
	private JTextField txtID;
	private JTextField txtPW;
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					OneWindow frame = new OneWindow();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public OneWindow() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300); 
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JButton btnNewButton = new JButton("\uB85C\uADF8\uC778\uD558\uC790");
		btnNewButton.setFont(new Font("굴림", Font.PLAIN, 25));
		btnNewButton.setBackground(Color.YELLOW);
		btnNewButton.setForeground(Color.BLUE);
		btnNewButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				String txtid=txtID.getText(); ///////
				String txtpw=txtPW.getText();
				LoginVO lvo1=new LoginVO(txtid,txtpw);
				//dispose(); //지금창 해제//프레임을 닫는 것
				setVisible(false);//지금창 안보이게
				new TwoWindow(lvo1).setVisible(true); /////////////////
				//이렇게 인자를 넣으면  TwoWindow를
				// 자동적으로 고치라고 함 
			}
		});
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
			}
		});
		btnNewButton.setBounds(121, 69, 201, 33);
		contentPane.add(btnNewButton);
		
		txtID = new JTextField();
		txtID.setText("qwer");
		txtID.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
			}
		});
		txtID.setBackground(Color.ORANGE);
		txtID.setBounds(121, 133, 201, 31);
		contentPane.add(txtID);
		txtID.setColumns(10);
		
		JLabel lblID = new JLabel("\uC544\uC774\uB514");
		lblID.setBounds(22, 141, 57, 15);
		contentPane.add(lblID);
		
		txtPW = new JTextField();
		txtPW.setText("qwer");
		txtPW.setColumns(10);
		txtPW.setBackground(Color.ORANGE);
		txtPW.setBounds(121, 194, 201, 31);
		contentPane.add(txtPW);
		
		JLabel lblPW = new JLabel("\uD328\uC2A4\uC6CC\uB4DC");
		lblPW.setBounds(22, 202, 57, 15);
		contentPane.add(lblPW);
		
	}
}
