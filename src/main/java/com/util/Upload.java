package com.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.commons.CommonsMultipartFile;
public class Upload {

	public static String fileUpload(CommonsMultipartFile files ,String path,HttpServletRequest request) throws IOException{
		String root =null;
		//�����ϴ��ļ���Ŀ¼
		String sc =request.getServletContext().getRealPath(File.separator);
		String src=sc+path;
		//�����Ŀ¼�����ڣ��ʹ���
		File dir =new File(src);
		if (dir.exists()==false) {
			dir.mkdirs();
			
			if (dir.canWrite()) {
				System.out.println("----------------------");
			}
		}
		//���������е��ļ�
				//��ȡ�ļ���ԭʼ�ļ���
				String fileName=new Random().nextFloat()+files.getOriginalFilename();
				 root =path+File.separator+fileName;
				//��ȡ�ļ���ԭʼ��ַ
				InputStream fileInputStream = files.getInputStream();
				FileOutputStream fileOutputStream =new FileOutputStream(src+File.separator+fileName);
				int length=0;
				byte[] buf =new byte[8192];
				while ((length = fileInputStream.read(buf))  !=  -1) {
					fileOutputStream.write(buf,0,length);
				}
				fileOutputStream.close();
				fileInputStream.close();
				return root;
				
		
				
  }
	
	
}			
