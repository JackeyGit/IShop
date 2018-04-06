package com.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.commons.CommonsMultipartFile;
public class FileUpload {

	public static List<String> fileUpload(CommonsMultipartFile files[] ,String path,HttpServletRequest request) throws IOException{

		List<String> rootlist =new ArrayList<String>();
		
		//�����ϴ��ļ���Ŀ¼
		String sc =request.getServletContext().getRealPath(File.separator);
		String src=sc+path;
		//����Ŀ¼�����ڣ��ʹ���
		File dir =new File(src);
		if (dir.exists()==false) {
			dir.mkdirs();
			
			if (dir.canWrite()) {
				System.out.println("----------------------");
			}
		}
		//���������е��ļ�
		
		
		if (files.length>0 && files!=null) {
			for (int i = 0; i < files.length; i++) {
				if (!files[i].isEmpty()) {
				//��ȡ�ļ���ԭʼ�ļ���
				String fileName=new Random().nextFloat()+files[i].getOriginalFilename();
				String root =path+File.separator+fileName;
				//��ȡ�ļ���ԭʼ��ַ
				InputStream fileInputStream = files[i].getInputStream();
				FileOutputStream fileOutputStream =new FileOutputStream(src+File.separator+fileName);
				int length=0;
				byte[] buf =new byte[8192];
				while ((length = fileInputStream.read(buf))  !=  -1) {
					fileOutputStream.write(buf,0,length);
				}
				fileOutputStream.close();
				fileInputStream.close();
				rootlist.add(root);
			}
		}
		}
		return rootlist;
			
  }
}			
