package com.cn.hnust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.cn.hnust.reptile.reptile;

@Controller
@RequestMapping("/reptile")
public class ReptileCon {

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
}
