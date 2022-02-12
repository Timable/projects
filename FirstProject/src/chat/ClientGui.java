package chat;

import java.awt.Frame;
import java.awt.Window;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.ScrollPaneConstants;
import javax.swing.SwingConstants;

public class ClientGui extends JFrame {

   JTextArea jta = new JTextArea();
   JTextField jtf;
   JTextField nname;
   JTextField iip;
   JTextField pport;
   JButton start;
   JTextField pf;
   JScrollPane scrollPane;
   JTextArea a;


   ClientBack back = new ClientBack();
   
   Connection con = null;

   public static void main(String[] args) throws ClassNotFoundException, SQLException {
      Frame f1 = new ClientGui();
   }

   public ClientGui() throws ClassNotFoundException, SQLException {
	   
	   Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","hr","hr");
	   
      setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
      setBounds(100, 100, 557, 527);
      getContentPane().setLayout(null);
      

      scrollPane = new JScrollPane();
      scrollPane.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
      scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
      scrollPane.setBounds(17, 58, 394, 355);
      getContentPane().add(scrollPane);
      scrollPane.setViewportView(jta);

      jtf = new JTextField();
      jtf.setBounds(17, 428, 394, 28);
      getContentPane().add(jtf);
      jtf.setColumns(10);

      //db 
      
      String sql = "select name from chatting where id = ?";
      String id = null;
      PreparedStatement ps = con.prepareStatement(sql);
      ResultSet rs = ps.executeQuery();
      
      id = rs.getString("id");
      nname = new JTextField();
      nname.setHorizontalAlignment(SwingConstants.CENTER);
      nname.setBounds(17, 14, 86, 28);
      getContentPane().add(nname);
      nname.setColumns(10);

      iip = new JTextField();
      iip.setHorizontalAlignment(SwingConstants.CENTER);
      iip.setColumns(10);
      iip.setBounds(109, 14, 134, 28);
      getContentPane().add(iip);
      iip.setText("127.0.0.1");

      pport = new JTextField();
      pport.setHorizontalAlignment(SwingConstants.CENTER);
      pport.setColumns(10);
      pport.setBounds(248, 14, 86, 28);
      getContentPane().add(pport);
      pport.setText("7979");
      start = new JButton("참여");

      start.setBounds(337, 13, 69, 31);
      getContentPane().add(start);

      pf = new JTextField();
      pf.setText("접속자");
      pf.setHorizontalAlignment(SwingConstants.CENTER);
      pf.setBounds(428, 55, 90, 28);
      getContentPane().add(pf);
      pf.setColumns(10);

      a = new JTextArea();
      a.setBounds(428, 98, 90, 315);
      getContentPane().add(a);
      
      setVisible(true);
      
      
      back.setGui(this);
      
      start.addActionListener(new ActionListener() {

         @Override
         public void actionPerformed(ActionEvent e) {
            if (start.getText().equals("참여")) {
               start.setText("퇴장");
               jta.append("서버알림이 : 귓속말은 /w 닉네임:메시지 입니다. \n");
               back.connect();

            } else {
               start.setText("퇴장");
               jta.append("[채팅 퇴장]");
               jta.append("\n");
               start.setText("참여");
               back.stop();
            }

         }
         
         
      });

      addWindowListener(new WindowListener() {
		
		@Override
		public void windowOpened(WindowEvent e) {
			// TODO Auto-generated method stub
			start.doClick();
			
		}
		
		@Override
		public void windowIconified(WindowEvent e) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public void windowDeiconified(WindowEvent e) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public void windowDeactivated(WindowEvent e) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public void windowClosing(WindowEvent e) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public void windowClosed(WindowEvent e) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public void windowActivated(WindowEvent e) {
			// TODO Auto-generated method stub
			
		}
	});
      
      jtf.addActionListener(new ActionListener() {

         @Override
         public void actionPerformed(ActionEvent e) {
            String msg = jtf.getText();
            back.chatStart(msg);
            jtf.setText("");

         }
      });

   }

   public void append(String msg) {
      jta.append(msg+"\n");
   }
}