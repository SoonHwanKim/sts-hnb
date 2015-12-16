package com.hnb.global;

import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class FileUpload {
	private FileOutputStream fos;
	public String uploadFile(MultipartFile file, String path,
			String fileName){
		try {
			byte fileDate[] = file.getBytes();
			fos = new FileOutputStream(path+"\\"+fileName);
			fos.write(fileDate);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if (fos != null) {
				try {
					fos.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return path+fileName;
	}

}
