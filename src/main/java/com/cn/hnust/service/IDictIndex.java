package com.cn.hnust.service;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Dictindex;

public interface IDictIndex {

    public List<Map<String,Dictindex>> selectAllDictEntry();
}
