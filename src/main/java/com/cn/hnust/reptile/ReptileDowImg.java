/**********
 * 爬虫
 */
package com.cn.hnust.reptile;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

public class ReptileDowImg {
	/**
	 * ������ҳ�ͱ����ȡ��ҳ���ݺ�Դ����
	 * 
	 * @param url
	 * @param encoding
	 */
	public static String getHtmlResourceByUrl(String url, String encoding) {
		StringBuffer buffer = new StringBuffer();
		URL urlObj = null;
		URLConnection uc = null;
		InputStreamReader in = null;
		BufferedReader reader = null;

		try {
			// ������������
			urlObj = new URL(url);
			// ����������
			uc = urlObj.openConnection();
			// ����������
			in = new InputStreamReader(uc.getInputStream(), encoding);
			// ����һ������д����
			reader = new BufferedReader(in);

			String line = null;
			while ((line = reader.readLine()) != null) {
				// һ��һ��׷��
				buffer.append(line + "\r\n");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (in != null) {
					in.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return buffer.toString();
	}

	/**
	 * ����ͼƬ��URL���ص�ͼƬ�����ص�filePath
	 * 
	 * @param filePath
	 *            �ļ���
	 * @param imageUrl
	 *            ͼƬ����ַ
	 */
	public static void downImages(String filePath, String imageUrl) {
		String fileName = imageUrl.substring(imageUrl.lastIndexOf("/"));

		File files = new File(filePath);
		if (!files.exists()) {// 文件夹不存在则创建文件夹
			files.mkdirs();
		}
		try {
			URL url = new URL(imageUrl);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			InputStream is = connection.getInputStream();
			// �����ļ�
			File file = new File(filePath + fileName);
			FileOutputStream out = new FileOutputStream(file);
			int i = 0;
			while ((i = is.read()) != -1) {
				out.write(i);
			}
			is.close();
			out.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
