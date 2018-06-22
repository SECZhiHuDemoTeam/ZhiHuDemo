package edu.nju.zhihudemo.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by deng on 2018/6/20.
 */
@WebServlet("/questionInfo")
public class QuestionInfoServlet extends HttpServlet {

    public void init() throws ServletException {
        // 执行必需的初始化
    }

    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/jsps/designers.jsp").forward(request, response);
    }

    public void destroy() {
        // 什么也不做
    }
}
