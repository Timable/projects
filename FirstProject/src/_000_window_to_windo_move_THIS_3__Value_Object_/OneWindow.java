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
      //  <��â����> 
//�̸� �ΰ�â �������Ͽ�  ����  
//    new Ŭ�����̸�( ).setVisible(true); /////////////////
 //��, 2class����϶��� new ���ξƴ�Ŭ�����̸�()..setVisible(true); 
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
		btnNewButton.setFont(new Font("����", Font.PLAIN, 25));
		btnNewButton.setBackground(Color.YELLOW);
		btnNewButton.setForeground(Color.BLUE);
		btnNewButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				String txtid=txtID.getText(); ///////
				String txtpw=txtPW.getText();
				LoginVO lvo1=new LoginVO(txtid,txtpw);
				//dispose(); //����â ����//�������� �ݴ� ��
				setVisible(false);//����â �Ⱥ��̰�
				new TwoWindow(lvo1).setVisible(true); /////////////////
				//�̷��� ���ڸ� ������  TwoWindow��
				// �ڵ������� ��ġ��� �� 
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
