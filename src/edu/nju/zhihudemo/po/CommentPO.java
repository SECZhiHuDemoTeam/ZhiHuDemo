package edu.nju.zhihudemo.po;

import java.security.Timestamp;
import java.util.List;

/**
 * Created by deng on 2018/6/22.
 */
public class CommentPO {
    private int questionId;

    private int id;
    private String content;
    private Timestamp publishTime;  // 发布时间
    private Timestamp lastEditTime; // 最后编辑时间

    private String publisherName;
    private int commentedId; // 被评论的评论id

//    private List<String> likerNames; // 多对多
}
