package chat;

import java.net.*;
import java.io.*;
import java.util.Scanner;

public class TcpMulClient {
   //���� ���� send�� thread ,recv�� thread �� ���⼭�� ������  
	public static void main(String args[]) {
		if (args.length != 3) {
			System.out.println
 ("����: Ŭ���̾�Ʈ������   \'java  ��Ű����.���ϸ�    ip�ּ�    ��Ʈ��ȣ   �г���\'  �������� �Է� ");
			System.exit(1);
		}
try {                       // ip�ּ�         //��Ʈ��ȣ
	Socket s1 = new Socket(args[0], Integer.parseInt(args[1]));
	System.out.println("������ ����.....");//connect 
	
	
// i/o network stream :   readUTF() writeUTF() ����� ���� �غ�   
	DataOutputStream outputStream
                = new DataOutputStream(s1.getOutputStream());
	DataInputStream inputStream 
                = new DataInputStream(s1.getInputStream());
	outputStream.writeUTF("##" + args[2]); 
	                            // �г��� ���� ������ ���� ���� 
	
	
	//�׷��� GUI�� ���� 	
			 // KajaClientGUI.java�� GUI ����(��, main  x) 
			//==================================================
			//client console --> client GUI 
         new KajaClientGUI(outputStream, inputStream, args[2]) {////////
                   // io��Ʈ��    ��     �г����� ���ڷ� ���� 
	          public void closeWork() throws IOException {
		           outputStream.close();
		           inputStream.close();
		           System.exit(0);
	       }
        }; //new KajaClientGUI -end
          //=================================================
} catch (Exception e) {
			//e.printStackTrace();//�ּ��� �޾ƾ� ������ ȭ���� �ε巴�� ���� 
		}
	}//main-end
} //main class- end

