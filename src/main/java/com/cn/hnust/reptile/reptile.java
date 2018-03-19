
package com.cn.hnust.reptile;

import java.io.*;
import java.net.*;
import java.util.regex.*;

public class reptile{
	/*********
	 * @param url
	 * @return
	 */
	public static String SentGet(String url){
		String result = "";
		BufferedReader in = null;
		try
		{
			URL realUrl = new URL(url);
			URLConnection connection = realUrl.openConnection();
			connection.connect();
			in = new BufferedReader(new InputStreamReader(connection.getInputStream(),"utf-8"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
		}catch(
		Exception e)
		{
			e.printStackTrace();
		}
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
	 * @param targetStr  
	 * @param patternStr 
	 * @return
	 */
	 public static String RegexString(String targetStr, String patternStr) {
		  Pattern pattern = Pattern.compile(patternStr);
		  Matcher matcher = pattern.matcher(targetStr);
		  if (matcher.find()) {
		   return matcher.group(1);
		  }
		  return "Nothing";
	}
}
