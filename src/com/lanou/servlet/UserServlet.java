package com.lanou.servlet;

import com.lanou.userDao.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 从请求参数中取得用户名
        String userName = request.getParameter("userName");
        // 密码
        String password = request.getParameter("password");
        // 业余爱好
        String[] habits = request.getParameterValues("habit");
        // 此处生成一个User对象
        User user = new User();
        user.setName(userName);
        user.setPassword(password);
        user.setHabits(java.util.Arrays.asList(habits));
        // 省略注册功能的实现代码
        // 把此user对象设置为request作用域内的一个变量
        request.setAttribute("userObj", user);
        request.getRequestDispatcher("/R.jsp")
                .forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        this.doGet(request, response);
    }


}
