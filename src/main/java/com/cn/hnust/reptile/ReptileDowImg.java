/**********
 * 爬虫的图片下载
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
	 * 根据网页和编码获取网页内容和源代码
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
			// 建立网络连接
			urlObj = new URL(url);
			// 打开网络连接
			uc = urlObj.openConnection();
			// 创建输入流
			in = new InputStreamReader(uc.getInputStream(), encoding);
			// 创建一个缓冲写入流
			reader = new BufferedReader(in);

			String line = null;
			while ((line = reader.readLine()) != null) {
				// 一行一行追加
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
	 * 根据图片的URL下载的图片到本地的filePath
	 * 
	 * @param filePath
	 *            文件夹
	 * @param imageUrl
	 *            图片的网址
	 */
	public static void downImages(String filePath, String imageUrl) {
		// 截取图片的名称
		String fileName = imageUrl.substring(imageUrl.lastIndexOf("/"));

		// 创建文件的目录结构
		File files = new File(filePath);
		if (!files.exists()) {// 判断文件夹是否存在，如果不存在就创建一个文件夹
			files.mkdirs();
		}
		try {
			URL url = new URL(imageUrl);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			InputStream is = connection.getInputStream();
			// 创建文件
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
