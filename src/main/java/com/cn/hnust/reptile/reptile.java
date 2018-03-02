/***********
 * �����һ����ϰ ��ȡ������url����
 */
package com.cn.hnust.reptile;

import java.io.*;
import java.net.*;
import java.util.regex.*;

public class reptile{
	/*********
	 * ץȡ��ҳ����
	 * @param url
	 * @return
	 */
	public static String SentGet(String url){
		// ����һ���ַ��������洢��ҳ����
		String result = "";
		// ����һ�������ַ�������
		BufferedReader in = null;
		try
		{
			// ��stringת��url����
			URL realUrl = new URL(url);
			// ��ʼ��һ�����ӵ��Ǹ�url������
			URLConnection connection = realUrl.openConnection();
			// ��ʼʵ�ʵ�����
			connection.connect();
			// ��ʼ�� BufferedReader����������ȡURL����Ӧ
			in = new BufferedReader(new InputStreamReader(connection.getInputStream(),"utf-8"));
			// ������ʱ�洢ץȡ����ÿһ�е�����
			String line;
			while ((line = in.readLine()) != null) {
				// ����ץȡ����ÿһ�в�����洢��result����
				result += line;
			}
		}catch(
		Exception e)
		{
			System.out.println("����GET��������쳣��" + e);
			e.printStackTrace();
		}
		// ʹ��finally���ر�������
		finally
		{
			try {
				if (in != null) {
					in.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}
	/**************
	 * �����ȡ��Ҫ������
	 * @param targetStr   ץȡ��ҳ����
	 * @param patternStr  ���������ʽ��
	 * @return
	 */
	 public static String RegexString(String targetStr, String patternStr) {
		  // ����һ����ʽģ�壬����ʹ��������ʽ����������Ҫץ������
		  // �൱�����������ƥ��ĵط��ͻ����ȥ
		  Pattern pattern = Pattern.compile(patternStr);
		  // ����һ��matcher������ƥ��
		  Matcher matcher = pattern.matcher(targetStr);
		  // ����ҵ���
		  if (matcher.find()) {
		   // ��ӡ�����
		   return matcher.group(1);
		  }
		  return "Nothing";
	}
}
