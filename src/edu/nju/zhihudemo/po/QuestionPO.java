package edu.nju.zhihudemo.po;

import java.security.Timestamp;
import java.util.List;

/**
 * Created by deng on 2018/6/22.
 */
public class QuestionPO {
    private int id;
    private String title; // 标题
    private String content; // 正文
    private int watchCount; // 浏览数
    private Timestamp publishTime;  // 发布时间
    private Timestamp lastEditTime; // 最后编辑时间

    private String publisherName;
//    private List<String> watcherNames; // 多对多
//    private List<String> likerNames; // 多对多
}
