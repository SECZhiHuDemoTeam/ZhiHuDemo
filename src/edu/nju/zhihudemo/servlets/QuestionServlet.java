package edu.nju.zhihudemo.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by deng on 2018/6/20.
 */
@WebServlet("/questions")
public class QuestionServlet extends HttpServlet {
//    private String message;

    public void init() throws ServletException {
        // 执行必需的初始化
//        message = "Hello World";
    }

    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws ServletException, IOException {
//        // 设置响应内容类型
//        response.setContentType("text/html");
//
//        // 实际的逻辑是在这里
//        PrintWriter out = response.getWriter();
//        out.println("<h1>" + message + "</h1>");

        request.getRequestDispatcher("/jsps/index.jsp").forward(request, response);
    }

    public void destroy() {
        // 什么也不做
    }
}
