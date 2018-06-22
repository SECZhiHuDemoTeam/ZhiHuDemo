package edu.nju.zhihudemo.vo;

/**
 * Created by liying on 2018/6/20.
 */
public class QuestionVO {
    private int id;
    private String name;
    private String description;
    private int like_count;
    private int comment_count;
    private int watch_count;
    private String username;

    public QuestionVO(int id, String name, String description, int like_count, int comment_count, int watch_count, String username) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.like_count = like_count;
        this.comment_count = comment_count;
        this.watch_count = watch_count;
        this.username = username;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getLike_count() {
        return like_count;
    }

    public void setLike_count(int like_count) {
        this.like_count = like_count;
    }

    public int getComment_count() {
        return comment_count;
    }

    public void setComment_count(int comment_count) {
        this.comment_count = comment_count;
    }

    public int getWatch_count() {
        return watch_count;
    }

    public void setWatch_count(int watch_count) {
        this.watch_count = watch_count;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
