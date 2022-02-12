package _000_window_to_windo_move_THIS_3__Value_Object_;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;
import javax.swing.AbstractButton;
import javax.swing.JButton;
import java.awt.Font;
import java.awt.Color;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;


public class TwoWindow extends JFrame {

	private JPanel contentPane;
	private JTextField txtID;
	private JTextField txtPW;
  //  private LoginVO lvo12;
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					TwoWindow frame2 = new TwoWindow(null);
					frame2.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 * @param lvo12 
	 * @param moonja 
	 */
	public TwoWindow(LoginVO lvo12) {
		//this.lvo12=lvo12;
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(500, 100, 450, 300); ///////////////////////////////
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
				
		JButton btnNewButton = new JButton("\uB2E4\uB978\uCC3D\uC774\uB77C\uB294~~");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			// textField.setText(moonja);
			}
		});
		btnNewButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
	    
	 
	 
			} 
		});
		
		btnNewButton.setBackground(Color.MAGENTA);
		btnNewButton.setFont(new Font("±¼¸²", Font.PLAIN, 24));
		btnNewButton.setBounds(93, 65, 218, 33);
		contentPane.add(btnNewButton);
		
		txtID = new JTextField();
		txtID.setBackground(Color.YELLOW);
		txtID.setBounds(93, 124, 218, 21);
		contentPane.add(txtID);
		txtID.setColumns(10);
		txtID.setText(lvo12.getId());////////
		
		
		txtPW = new JTextField();
		txtPW.setBackground(Color.PINK);
		txtPW.setBounds(93, 167, 218, 21);
		contentPane.add(txtPW);
		txtPW.setColumns(10);
		txtPW.setText(lvo12.getPw());//////////
	}
}
