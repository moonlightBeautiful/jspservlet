package com.java1234.servlet;

import com.java1234.dao.UserDao;
import com.java1234.model.User;
import com.java1234.util.DbUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class c04LoginServlet extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    DbUtil dbUtil = new DbUtil();
    UserDao userDao = new UserDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        try {
            if (userName.equals("gaoxu") && password.equals("123")) {
                HttpSession session = request.getSession();
                User currentUser = new User(userName, password);
                session.setAttribute("currentUser", currentUser);
                response.sendRedirect("main.jsp");
            } else {
                request.setAttribute("error", "用户名或密码错误！");
                request.setAttribute("userName", userName);
                request.setAttribute("password", password);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }


}
