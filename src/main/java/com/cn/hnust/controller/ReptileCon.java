package com.cn.hnust.controller;

import org.apache.log4j.Logger;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.cn.hnust.pojo.ImageUrl;
import com.cn.hnust.reptile.ReptileDowImg;
import com.cn.hnust.reptile.reptile;



@Controller
@RequestMapping("/reptile")
public class ReptileCon {
    //��ȡ��־��¼��Logger������Ϊ��������
    private static Logger log = Logger.getLogger(ReptileCon.class);
    

	@RequestMapping(value = "/reptileBaidu", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public JSONObject baiduLogo() {
		// ���弴�����ʵ�����
		String url = "http://www.baidu.com";
		String result = reptile.SentGet(url);
		String imgSrc = reptile.RegexString(result, "href=\"(.+?)\"");
		JSONObject result1 = new JSONObject();
		result1.put("flag", imgSrc);
		return result1;
	}

	@RequestMapping(value = "/reptileDownImg", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public JSONObject downImg(@RequestBody ImageUrl ImageUrl) {
		JSONObject result1 = new JSONObject();
		JSONObject img = new JSONObject();
		String htmlResource = ReptileDowImg.getHtmlResourceByUrl(ImageUrl.getUrl(), ImageUrl.getEncode());
		// ������ҳԴ����
        Document document = Jsoup.parse(htmlResource);
        // ��ȡ����ͼƬ�ĵ�ַ
        Elements elements = document.getElementsByTag("img");
        
        for(Element element : elements){
            String imgSrc = element.attr("src");
            if (!"".equals(imgSrc) && (imgSrc.startsWith("http://") || imgSrc.startsWith("https://"))) {
                // �ж�imgSrc�Ƿ�Ϊ�����Ƿ���"http://"��ͷ
            	img.put("success:"+imgSrc, imgSrc);
            	log.info("�������ص�ͼƬ�ĵ�ַ��" + imgSrc);
                ReptileDowImg.downImages(ImageUrl.getFilepath(), imgSrc);
            }
            else{
            	img.put("faile:"+imgSrc, imgSrc);
            	log.info("��Ч�ĵ�ַ��" + imgSrc);
            }
        }

		result1.put("imgState", img);
		result1.put("flag", ImageUrl.getUrl());
		return result1;
	}
}
