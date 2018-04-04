package j2eeWeb.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class OfflineTest extends HttpServlet {  
  
	private static final long serialVersionUID = -7251826476083491211L;

	public void init() throws ServletException {  
        boolean bool = pingLink();  
        // ȡ��Application����  
        ServletContext application = this.getServletContext();  
        // ����Application����  
        application.setAttribute("bool", bool);  
    }  
      
	public boolean pingLink() {
		boolean bool = true;
		Runtime runtime = Runtime.getRuntime(); // ��ȡ��ǰ��������н�����
		Process process = null; // �������������
		String line = null; // ��������Ϣ
		InputStream is = null; // ������
		InputStreamReader isr = null; // �ֽ���
		BufferedReader br = null; //�ַ����뻺����
		String ip = "www.baidu.com";
		boolean res = false;// ���
		try {
			process = runtime.exec("ping " + ip); // PING
			is = process.getInputStream(); // ʵ����������
			isr = new InputStreamReader(is);// ��������ת�����ֽ���
			br = new BufferedReader(isr);// ���ֽ��ж�ȡ�ı�
			while ((line = br.readLine()) != null) {
				if (line.contains("TTL")) {
					res = true;
					break;
				}
			}
			is.close();
			isr.close();
			br.close();
			if (res) {
				// Log.print("ping www.baidu.comͨ...�Ѿ���������");
			} else {
				bool = false;
				// Log.print("ping www.baidu.com��ͨ...�޷���������");
			}
		} catch (IOException e) {
			// Log.print(e.getMessage());
		}
		return bool;
	}
  
}  