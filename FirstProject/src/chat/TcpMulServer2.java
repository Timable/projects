package chat;

import java.net.*;
import java.io.*;
import java.util.*;

class ServerClass2 {

	 ArrayList<ThreadServerClass> threadList = new ArrayList<ThreadServerClass>();

	Socket socket;
	DataOutputStream outputStream;
	
	public ServerClass2(int portno) throws IOException {//������ 
	//public ServerClass() throws IOException {

		Socket s1 = null;

		//ServerSocket ss1 = new ServerSocket(6788);
		ServerSocket ss1 = new ServerSocket(portno);
		System.out.println("��������.......");/////////////////

		
		
		
		
		
	while (true) {
		s1 = ss1.accept();
	System.out.println("�����ּ�: " + s1.getInetAddress() + " , ������Ʈ: " + s1.getPort());
			ThreadServerClass tServer1 = new ThreadServerClass(s1);
			tServer1.start();////////
            // �Ѹ��� �����ϸ�  ThreadServerClass �����忡 �÷����� 
			
			threadList.add(tServer1);//�÷��ǿ� add
			System.out.println("������ �� : " + threadList.size());
		}//whle-end 

	}

		// �������� �����忡�� chat ���� ����
	public void sendChat(String chat) throws IOException {
		for (int i = 0; i < threadList.size(); i++)
			threadList.get(i).outputStream.writeUTF(chat);
		       //ó���� nickname��  ä�ð��� ��� ������� ���� 

	}//sendChat-end

	public void privateChat(String chat) throws IOException{
		
	}
	
		
	class ThreadServerClass extends Thread {//�Ѹ� ���Ӹ��� ó���� ������ Ŭ���� 
		Socket socket1;
		DataInputStream inputStream;
		DataOutputStream outputStream;

		public ThreadServerClass(Socket s1) throws IOException {
			socket1 = s1;
			inputStream = new DataInputStream(s1.getInputStream());

			outputStream = new DataOutputStream(s1.getOutputStream());
		}
		
		@Override
		public void run() { //remember !!!!!!  �ѻ�� ������ ������ ����� 
			String nickname = "";
			try {
				if (inputStream != null) {
					nickname = inputStream.readUTF();//�ʷϿ��� , �������� 
					sendChat(nickname + " �� ����~~~~~ (^^) (^^) (^^) ");
				}
				while (inputStream != null) {
					// System.out.println(inputStream.readUTF());
					sendChat(inputStream.readUTF());  //�氡�氡 ~~~~
					  // Ŭ���̾�Ʈ�� ���� ä�� ������ ������  ��ο��� ����
				}//����ä���� ���� ���  while ���ȿ��� �ݺ� loop 
				
			} catch (IOException e) { //����� �Դ� ���� ������ �߻��� �� //�������� ��� 
				//e.printStackTrace(); 

			} finally {
				// ���� �������� �ε��� ã��
				for (int i = 0; i < threadList.size(); i++) {
					if (socket1.equals(threadList.get(i).socket1)) {//�� ������ ������???????
						threadList.remove(i);//ã�Ҵ� ȫ�浿 ���� - �������ڴ� 
						try {
							sendChat(nickname + " �� ����~~~~~  (��.��) (��.��) (��.��) ");
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
				System.out.println("������ �� : " + threadList.size()+" ��");
			}//finally-end 

		}//run-end 
	}//ThreadServerClass-end

}//ServerClass-end

public class TcpMulServer2 {//TcpMulServer.java 
	public static void main(String args[]) throws IOException {
		if(args.length !=1) {
			
		System.out.println("���� : ����������   \'java  ��Ű����.���ϸ�   ��Ʈ��ȣ\'  �������� �Է� ");
		}
	//	new ServerClass();////////////
		new ServerClass(Integer.parseInt(args[0]));////////////

	}

}
