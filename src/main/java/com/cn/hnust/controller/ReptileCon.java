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
    //获取日志记录器Logger，名字为本类类名
    private static Logger log = Logger.getLogger(ReptileCon.class);
    

	@RequestMapping(value = "/reptileBaidu", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public JSONObject baiduLogo() {
		// 定义即将访问的链接
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
		JSONObject suImg = new JSONObject();
		JSONObject faImg = new JSONObject();
		int suLength = 0;
		int faLength = 0;
		String htmlResource = ReptileDowImg.getHtmlResourceByUrl(ImageUrl.getUrl(), ImageUrl.getEncode());
		// 解析网页源代码
        Document document = Jsoup.parse(htmlResource);
        // 获取所有图片的地址
        Elements elements = document.getElementsByTag("img");
        
        for(Element element : elements){
            String imgSrc = element.attr("src");
            if (!"".equals(imgSrc) && (imgSrc.startsWith("http://") || imgSrc.startsWith("https://"))) {
                // 判断imgSrc是否为空且是否以"http://"开头
            	log.info("正在下载的图片的地址：" + imgSrc);
                ReptileDowImg.downImages(ImageUrl.getFilepath(), imgSrc);
            	suImg.put("success:"+imgSrc, imgSrc);
            	suLength++;
            }
            else{
            	log.info("无效的地址：" + imgSrc);
            	faImg.put("faile:"+imgSrc, imgSrc);
            	faLength++;
            }
        }
        
        faImg.put("length", faLength);
        suImg.put("length", suLength);
        
		result1.put("success", suImg);
		result1.put("faile", faImg);
		result1.put("flag", ImageUrl.getUrl());
		return result1;
	}
}
