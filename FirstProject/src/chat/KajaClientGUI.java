package chat;

import java.awt.Color;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

//client console to client GUI  // KajaClientGUI.java 
public class KajaClientGUI extends JFrame implements Runnable, ActionListener {
	                                //thread ����
	
	//console��忡�� �Ѿ���� 3�� ���ڸ� �޾� ������ �غ��ʵ� 
	DataOutputStream outputStream;  
	DataInputStream inputStream;
	String nickname;
	
	//�׷��ȵ����� ������Ʈ �� �غ�
	JLabel jlabel1 = new JLabel("�츮�� ä��~~~");
	JTextArea jtarea1 = new JTextArea();
	JTextField jtfield1 = new JTextField();
	JList jlist = new JList();
	JScrollPane jScrollPane = new JScrollPane(jtarea1);///////////
	JScrollPane jScrollPane1 = new JScrollPane(jlist);
	
    // Ŭ���̾�Ʈ�� 	 
	// new KajaClientGUI(outputStream, inputStream, args[2])
	//{���� ����� ã�ƿ�
	//GUI ���� ������ó�� ����
	public KajaClientGUI(DataOutputStream outputStream, 
	                         DataInputStream inputStream, String nickname) {// ������
		this.outputStream = outputStream;//�ʵ�(�Ӽ�) �ʱ�ġ 
		this.inputStream = inputStream;
		this.nickname = nickname;
		getContentPane().setLayout(null);
		jlabel1.setBounds(0, 0, 782, 26);
		// North, South, West, East, Center

		jlabel1.setFont(new Font("����", Font.BOLD, 22));
		getContentPane().add(jlabel1);//"�츮�� ä��"
		
		// chat���ڿ��� ��µǴ� �� 
		jtarea1.setBackground(Color.yellow);//������� 
		jtarea1.setForeground(Color.blue); //��� ���� ���� �Ķ���  �۾� 
		jtarea1.setFont(new Font("����", Font.BOLD, 22));
		                  // new Font(�۾�ü, ��Ÿ��, ũ��)
		
		jtarea1.setEditable(false); // ���� x
		jScrollPane.setBounds(0, 26, 524, 691);
		getContentPane().add(jScrollPane);
		   //new JScrollPane(jtarea1); //  �̹� ���ἱ��Ǿ����� 
		       //add("Center", jtarea1) //�׷��Ƿ� �̰� ��� �����ͻ��;//////////
	
		// ����Ʈ (����� ���)
		jlist.setBackground(Color.white);
		jlist.setForeground(Color.BLACK);
		jlist.setFont(new Font("����", Font.BOLD, 22));
		
		
		
		jlist.setVisible(true);
		
		
		
		
		button.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				if (e.getSource() == jtfield1) {
					try {
						outputStream.writeUTF(nickname+" --> " + jtfield1.getText());
					    //nickname�� client�� chat�� ������ 
		  
					} catch (IOException ee) {
						// TODO Auto-generated catch block
						//ee.printStackTrace();
					}
					jtfield1.setText("");//������ ������ �ش� ĭ�� Ŭ���� 
				}
				
				
			}
		});
		button.setIcon(new ImageIcon("C:\\Users\\82102\\Downloads\\sendbtn.png"));
		button.setBounds(708, 717, 74, 36);
		getContentPane().add(button);
		jScrollPane1.setBounds(524, 26, 258, 691);
		
		getContentPane().add(jScrollPane1);
		jtfield1.setBounds(0, 717, 782, 36);
		
		//chat �Է�
		jtfield1.setBackground(Color.white);
		jtfield1.setForeground(Color.BLACK);
		jtfield1.setFont(new Font("����", Font.BOLD, 25));
		getContentPane().add(jtfield1);///////////
		jtfield1.addActionListener(this);//�̺�Ʈ ��� ////////////

		setSize(800, 800);//ä��â ũ�� 
		setVisible(true); //�׻� ������ 
		
		addWindowListener(new WindowAdapter() {
			public void windowClosing(WindowEvent e) {
				dispose();
				System.exit(0); 
				setVisible(false);
			}
		});

		
		//=============================================================
		// ������ ���� �޾� textarea�� �ѷ��ִ� ������
		Thread th1 = new Thread(this); 
		th1.start();
		//=======================================================
	}// ������-end

	public void actionPerformed(ActionEvent e) {
		if (e.getSource() == jtfield1) {
			try {
  outputStream.writeUTF(nickname+" --> " + jtfield1.getText());
			        //nickname�� client�� chat�� ������ 
  
			} catch (IOException ee) {
				// TODO Auto-generated catch block
				//ee.printStackTrace();
			}
			jtfield1.setText("");//������ ������ �ش� ĭ�� Ŭ���� 
		}
	}// actionPerformed - end

	
	
	
	
	Toolkit tk1=Toolkit.getDefaultToolkit(); 
	private final JButton button = new JButton("");
	//chat �ö����� beep�� �︮�� �Ϸ��� 
	
public void run() { //for �޴� thread
 try {
	 while (true) {
		String strServer1 = inputStream.readUTF(); // ������ ����
		if (strServer1 == null) {
			jtarea1.append("\n"+"����");
			return; 
		}
	jtarea1.append("\n" + strServer1);//���������°� textarea���߰�
				
	//---------�̰��ؾ� ��ũ�ѹٰ� ������ �� ������ ������ �� ���� -----
		int kkeut=jtarea1.getText().length();
		jtarea1.setCaretPosition(kkeut);//Ŀ���� �ǵڷ� 
		   //jtarea1.setCaretPosition(0);//Ŀ���� ��ó���� 
		tk1.beep();////////////chat�� �ö����� beep�� (�층~~~)    
	//-----------------------------------------------	
		}
	} catch (Exception eee) {
			jtarea1.append("\n" + eee); 	}
	}//run-end
}//class-end

