package com.cn.hnust.dictionray;

import java.io.File;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

public class DictManager {
	private static Logger log = Logger.getLogger(DictManager.class);  
    private static Map<String, String> field2DictEntryMap = new HashMap<String, String>(); // 数据字典英文转换
    private static Map<String, String> stdfieldsMap = new HashMap<String, String>();// 标准字段中英文对照
    private static List<Map<String, String>> stdfieldList = new ArrayList<Map<String, String>>();// 标准字段所有中英文对照集合
	private static Map<String, String> DicEntry = new HashMap<String, String>();//
	/**
	 * 翻译封装
	 * 
	 */
	public static List<Map<String, Object>> getDicEntry(int divtEntry){
		
		
		return null;
	}
	
	
	/**
	 * 解析标准字段与数据字典对应关系
	 */
	
	public void loadFieldNameXml() {
		String path = DictManager.class.getClassLoader().getResource("fieldname.xml").getPath();
		try {
            path = URLDecoder.decode(path, "UTF-8");
            Document doc = new SAXReader().read(new File(path));
            Element root = doc.getRootElement();
            List<Element> elements = root.elements("FieldItem");

            for (Element el : elements) {
            	Map<String, String> stdfieldMap = new HashMap<String, String>();
                String englishName = el.attributeValue("english_name");
                String chineseName = el.attributeValue("entry_name");
                String dictEntry = el.attributeValue("dict_entry");

                if (dictEntry != null && !"".equals(dictEntry) && !"0".equals(dictEntry)) {
                    field2DictEntryMap.put(englishName, dictEntry);
                }

                if (chineseName != null && !"".equals(chineseName) && !"0".equals(chineseName)) {
                    stdfieldsMap.put(englishName, chineseName);
                    stdfieldMap.put("englishName", englishName);
                    stdfieldMap.put("entryName", chineseName);
                    stdfieldList.add(stdfieldMap);
                }
            }
            log.info("解析成功"+ stdfieldList );
        } catch (Exception e) {
            log.error("加载标准字段文件异常...", e);
        }
	}
}
