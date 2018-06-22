package edu.nju.zhihudemo.service;


import edu.nju.zhihudemo.vo.QuestionVO;

import java.util.List;

/**
 * Created by deng on 2018/6/22.
 */
public interface QuestionService {
    /**
     * @param username   用户id
     * @param pageNum    页数
     * @param perPageNum 每页显示的问题数
     * @return
     */
    List<QuestionVO> getHomepageQuestions(String username, int pageNum, int perPageNum);

    /**
     * 获得question详细信息
     * @param id
     * @return
     */
    QuestionVO getQuestion(int id);
}
